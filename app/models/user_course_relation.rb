class UserCourseRelation < ActiveRecord::Base
  attr_accessible :course_id, :user_id
  validates :course_id , presence: true 
  validates :user_id , presence: true
  belongs_to :courses
  belongs_to :users
end
