module RedmineSidekiq
end

Sidekiq.configure_server do |config|
  config.redis = { :namespace => 'redmine_sidekiq' }
end

Sidekiq.configure_client do |config|
  config.redis = { :namespace => 'redmine_sidekiq' }
end

require 'redmine_sidekiq/admin_constraint'
