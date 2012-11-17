# == Schema Information
#
# Table name: dishes
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  cost          :decimal(, )
#  photo         :string(255)
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Dish < ActiveRecord::Base
  belongs_to :restaurant
  has_many :orders
  has_many :receipts, :through => :orders
  validates :name, :photo, :presence => true
  validates :cost, :numericality => { :greater_than => 10 }
  mount_uploader :photo, FoodPicUploader
end
