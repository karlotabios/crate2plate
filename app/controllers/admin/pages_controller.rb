class Admin::PagesController < ApplicationController
	before_action :authenticate_user!

	def index
		@products = Product.all
		@orders = Order.all
		@orderlines = OrderLine.all
		@orderlines.each do |o|
			@sum += @o.quantity
		end
		@payments = PaymentHistory.all

		render("admin/index.html.erb")
	end
end