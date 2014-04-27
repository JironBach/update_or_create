source "https://rubygems.org"

# Declare your gem's dependencies in update_or_create.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'

group :development, :test do
  # RSpec
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  # Code coverage
  gem 'simplecov', require: false
end

group :development, :test do
  # N+1 Query検出
  gem 'bullet'
end

