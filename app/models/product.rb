class Product < ApplicationRecord
	has_many :orders, :through => :order_lines
	has_many :order_lines
	has_many :supplies
end
