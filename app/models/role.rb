class Role < ActiveRecord::Base
  attr_accessible :description
  validates :description , presence: true , length: {maximum: 50}
  has_many :users, dependent: :destroy
end
