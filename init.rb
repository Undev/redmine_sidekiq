require 'redmine'

Sidekiq.configure_server do |config|
  config.redis = { :namespace => 'redmine_sidekiq' }
end

Sidekiq.configure_client do |config|
  config.redis = { :namespace => 'redmine_sidekiq' }
end

ActionDispatch::Callbacks.to_prepare do
  require 'redmine_sidekiq'
end

Redmine::Plugin.register :redmine_sidekiq do
  name        'Sidekiq for Redmine'
  description 'Background jobs for Redmine'
  author      'Undev'
  version     '0.0.1'
  url         'https://github.com/Undev/redmine_sidekiq'

  requires_redmine :version_or_higher => '2.1'

  menu :top_menu, :sidekiq, '/sidekiq', :if => Proc.new { User.current.admin? }
end
