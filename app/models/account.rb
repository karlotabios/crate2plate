class Account < ApplicationRecord
	has_many :orders, :dependent => :destroy
	has_many :payment_histories, :dependent => :destroy
end
