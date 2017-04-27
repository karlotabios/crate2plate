class Product < ApplicationRecord
	has_many :order_lines
	has_many :supplies
	belongs_to :order, :through => :order_lines
end
