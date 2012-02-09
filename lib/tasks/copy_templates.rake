namespace :templates do
  desc "Copy all the templates from rails to the application directory for customization"
  task :copy do
    require 'rubygems'
    require 'rubygems/gem_runner'
    require 'fileutils'
    railties = (version = ENV['VERSION']) ?
        Gem.cache.find_name('railties', "= #{version}").first :
        Gem.cache.find_name('railties').sort_by { |g| g.version }.last
    base_path = railties.full_gem_path
    FileUtils.mkdir_p "#{Rails.root}/lib/templates/"
    default_dirs = {:erb => %w{controller mailer scaffold}, :rails => %w{controller helper scaffold_controller}}
    default_dirs.each do |type,names|
      FileUtils.mkdir_p "#{Rails.root}/lib/templates/#{type.to_s}"
      names.each do |name|
        dst_name = "#{Rails.root}/lib/templates/#{type.to_s}/#{name}" 
        FileUtils.mkdir_p dst_name
        src_name = "#{base_path}/lib/rails/generators/#{type.to_s}/#{name}/templates"
        src = Dir.new src_name
        src.entries.each do |fname|
          FileUtils.cp "#{src_name}/#{fname}", "#{dst_name}" unless fname =~ /^\..*/
        end
      end
    end
  end
end