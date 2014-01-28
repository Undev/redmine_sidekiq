require 'redmine'
require 'redmine_sidekiq'

Redmine::Plugin.register :redmine_sidekiq do
  name        'Sidekiq for Redmine'
  description 'Background jobs for Redmine'
  author      'Undev'
  version     '0.0.1'
  url         'https://github.com/Undev/redmine_sidekiq'

  requires_redmine :version_or_higher => '2.1'
end
