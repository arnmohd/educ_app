class Topic < ActiveRecord::Base
  attr_accessible :chapter_id, :content, :course_id, :heading, :syllabus_id
  validates :heading , presence: true , length: {maximum: 50}
  validates :content , presence: true 
  validates :course_id, presence: true
  validates :syllabus_id, presence: true
  validates :chapter_id, presence: true
  belongs_to :courses
  belongs_to :syllabuses
  belongs_to :chapters
end
