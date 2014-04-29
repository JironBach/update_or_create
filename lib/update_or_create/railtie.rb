require 'update_or_create'
require 'rails'

module UpdateOrCreate
  class Railtie < Rails::Railtie
    railtie_name :update_or_create

    rake_tasks do
      load "tasks/update_or_create.rake"
    end
  end
end

