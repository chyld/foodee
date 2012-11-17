# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cuisine    :string(255)
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ActiveRecord::Base
  has_many :dishes
  has_many :receipts
  validates :name, :uniqueness => true, :length => { :minimum => 4 }
  validates :cuisine, :address, :presence => true
end
