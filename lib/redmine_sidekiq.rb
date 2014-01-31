module RedmineSidekiq
end

# IssueRelation has a "delay" attribute and
# to prevent ActiveRecord::DangerousAttributeError
# we remove sidekiq method:
ActiveRecord::Base.send :undef_method, :delay

require 'redmine_sidekiq/admin_constraint'
require 'workers/base_worker'
