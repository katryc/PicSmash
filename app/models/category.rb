class Category < ActiveRecord::Base

  has_many :pictures, through: :post
end
