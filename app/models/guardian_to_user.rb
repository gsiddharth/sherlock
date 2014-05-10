class GuardianToUser < ActiveRecord::Base
  belongs_to :guardian, :class_name => "User"
  belongs_to :user, :class_name => "User"
end
