require 'sidekiq/web'

RedmineApp::Application.routes.draw do
  mount Sidekiq::Web.new, at: '/sidekiq', constraints: RedmineSidekiq::AdminConstraint.new
end
