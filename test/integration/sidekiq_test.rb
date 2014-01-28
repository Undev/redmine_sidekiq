require File.expand_path('../../test_helper', __FILE__)

class SidekiqTest < ActionController::IntegrationTest
  fixtures :enumerations, :users,
           :roles,
           :member_roles,
           :members,
           :enabled_modules

  def test_admin_can_open_sidekiq_ui
    log_user('admin', 'admin')
    get '/sidekiq'
    assert_response :success
  end

  def test_user_cannot_open_sidekiq_ui
    log_user('jsmith', 'jsmith')
    get '/sidekiq'
    assert_response 404
  end

  def test_anonymous_cannot_open_sidekiq_ui
    User.current = User.anonymous
    get '/sidekiq'
    assert_response 404
  end
end
