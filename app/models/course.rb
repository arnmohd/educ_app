class Course < ActiveRecord::Base
  attr_accessible :name
  validates :name , presence: true , length: {maximum: 50}
  has_many :syllabuses, dependent: :destroy
  has_many :chapters, dependent: :destroy
  has_many :user_course_relations, dependent: :destroy
  has_many :headers, dependent:  :destroy
  has_many :topics, dependent:  :destroy
                    
end
