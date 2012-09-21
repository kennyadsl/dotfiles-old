require 'rake'

desc "Hook our dotfiles into system-standard positions."
task :install do

  linkables = Dir.glob(File.join(ENV["HOME"], '.dotfiles', '*/**{.symlink}'))

  # Add dropbox configuration if present
  dropbox_conf = File.join(ENV["HOME"], "Dropbox/Config/dotfiles")
  if File.exists?(dropbox_conf) && File.directory?(dropbox_conf)
    linkables |= Dir.glob(dropbox_conf+'/**/*{.symlink}')
  end

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        when 's' then next
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end
    `ln -s "#{linkable}" "#{target}"`
  end

  # Sublime Text 2 Configuration
  subl_library_dir = Dir.glob(File.join(ENV["HOME"], "Library/Application\ Support/Sublime\ Text\ 2"))
  subl_dotfiles_dir = Dir.glob(File.join(ENV["HOME"], ".dotfiles/Sublime\ Text\ 2"))
  subl_configuration_dirs = ["Installed\ Packages", "Packages", "Pristine\ Packages"]

  subl_skip_all = false
  subl_overwrite_all = false

  subl_configuration_dirs.each do |dir|
    overwrite = false
    subl_overwrite = false

    subl_library_path = File.join(subl_library_dir, dir)
    subl_dotfiles_path = File.join(subl_dotfiles_dir, dir)

    subl_overwrite = false
    if File.exists?(subl_library_path) || File.symlink?(subl_library_path)
      unless subl_skip_all || subl_overwrite_all
        puts "Sublime Text 2 configuration already exists: #{subl_library_path}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all"
        case STDIN.gets.chomp
        when 'o' then subl_overwrite = true
        when 'O' then subl_overwrite_all = true
        when 'S' then subl_skip_all = true
        when 's' then next
        end
      end
      FileUtils.rm_rf(subl_library_path) if subl_overwrite || subl_overwrite_all
    end
  `ln -s "#{subl_dotfiles_path}" "#{subl_library_path}"`
  end
end

task :uninstall do

  Dir.glob('**/*.symlink').each do |linkable|

    file = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    # Remove all symlinks created during installation
    if File.symlink?(target)
      FileUtils.rm(target)
    end
    
    # Replace any backups made during installation
    if File.exists?("#{ENV["HOME"]}/.#{file}.backup")
      `mv "$HOME/.#{file}.backup" "$HOME/.#{file}"` 
    end

  end
end

task :default => 'install'
