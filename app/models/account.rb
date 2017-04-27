class Account < ApplicationRecord
	has_many :order, dependent: :destroy
	has_many :payment_history, dependent: :destroy
	# has_many :receipts, dependent: :destroy # though seemingly logical just by looking at it and looking at the DFD's, this is ommitted because in practice later on for queries, receipts cannot be fetched merely by knowing the account (have to look at for which order as well)
end
