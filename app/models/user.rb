class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :role_id
  has_secure_password
  before_save { |user| user.email = email.downcase }
  validates :name, presence: true , length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } ,uniqueness: { case_sensitive: false }                              
  validates :password, presence: true , length: { minimum: 6 } 
  validates :password_confirmation, presence: true   
  validates :role_id , presence: true
  belongs_to :roles
  has_many :user_course_relations, dependent: :destroy
end
