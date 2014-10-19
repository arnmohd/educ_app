class Chapter < ActiveRecord::Base
  attr_accessible :course_id, :name, :syllabus_id
  validates :name, presence: true , length: { maximum: 50 }
                                    
  validates :syllabus_id , presence: true
  validates :course_id , presence: true
  belongs_to :syllabuses
  belongs_to :courses
  has_many :topics, dependent: :destroy
                    
end

