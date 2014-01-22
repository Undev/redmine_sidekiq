class RedmineSidekiq::AdminConstraint
  def matches?(request)
    User.current.admin?
  end
end
