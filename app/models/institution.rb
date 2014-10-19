class Institution < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :logo, :name, :phone_no
  validates :name , presence: true , length: {maximum: 50}
  validates :address_line1 , presence: true , length: {maximum: 50}
end
