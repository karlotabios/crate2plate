class Order < ApplicationRecord
	belongs_to :account
	belongs_to :delivery
	has_many :payment_histories
end
