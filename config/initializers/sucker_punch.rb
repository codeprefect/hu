# config/application.rb
class Application < Rails::Application
  # ...
  config.active_job.queue_adapter = :sucker_punch
end