class PaymentHistory < ApplicationRecord
	belongs_to :order
	belongs_to :user
end
