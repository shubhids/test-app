namespace :db do
  desc "Generate the sample data"
  task :sample_data => ['db:ensure_development_or_staging','environment'] do
    sample_file = 'db/sample.rb'
    load(sample_file) if File.exists?(sample_file)
    puts "Products created."
  end

  task :ensure_development_or_staging do
    if !['development','staging'].include? Rails.env
      puts "This task can only run in a development or staging environment"
      exit 
    end
  end
end