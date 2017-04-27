class Order < ApplicationRecord
	has_many :payment_histories
	has_many :products, :through => :order_lines
	has_one :receipt

	belongs_to :delivery
	belongs_to :account
end
