source 'http://rubygems.org'

gem 'rails', '3.0.6'
gem 'typus', '3.0.10'
gem 'paperclip'
gem 'delayed_job', '2.1.4'
gem 'delayed_paperclip', '0.6.5'
gem 'koala'
gem 'jasmine'
gem 'selenium'
gem 'rack'
gem 'backup'
gem 'jquery-rails'
gem 'kaminari'
group :production, :staging do
  gem "pg", '0.9.0'
end

group :development, :test do  
  gem "sqlite3-ruby", "~> 1.3.0", :require => "sqlite3"
end


# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
 gem 'capistrano'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri', '1.4.1'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for certain environments:
 gem 'rspec', :group => :test
 group :test do
   gem 'webrat'
 end

gem 'acts-as-taggable-on'