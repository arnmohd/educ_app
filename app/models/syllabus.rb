class Syllabus < ActiveRecord::Base
  attr_accessible :course_id, :name
  validates :name , presence: true , length: {maximum: 50}
  validates :course_id, presence: true
  belongs_to :courses
  has_many :chapters, dependent: :destroy
  has_many :headers, dependent: :destroy
  has_many :topics, dependent: :destroy
end
