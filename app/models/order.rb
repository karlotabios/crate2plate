class Order < ApplicationRecord
	belongs_to :account
	belongs_to :delivery
	has_many :payment_histories
	has_many :products, :through => :order_lines
	has_many :order_lines
	has_one :receipt
end
