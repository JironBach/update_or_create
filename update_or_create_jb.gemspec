$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "update_or_create/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "update_or_create_jb"
  s.version     = UpdateOrCreate::VERSION
  s.summary     = "Allow update_or_create to ActiveRecord."
  s.description = "Allow to use update_or_create when db:seed or sometime."
  s.authors     = ["Jun'ya Shimoda(JironBach)"]
  s.email       = ["jironbach@gmail.com"]
  s.homepage    = "https://github.com/JironBach/update_or_create"
  s.licenses    = ['MIT', 'GPL-2']

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]



  s.add_dependency "rails", "~> 4.1.0"

  s.add_dependency "sqlite3"
  s.add_dependency "rspec"
  s.add_dependency "rspec-rails"
end
