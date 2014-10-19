class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :role_id
  validates :name, presence: true , length: { maximum: 50 }
  validates :email, presence: true , length: { maximum: 50 }                                  
  validates :password, presence: true , length: { minimum: 6 }  
  validates :role_id , presence: true
  belongs_to :roles
  has_many :user_course_relations, dependent: :destroy
end
