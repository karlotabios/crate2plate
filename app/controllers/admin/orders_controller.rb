class OrdersController < ApplicationController
	def create
		if user_signed_in?
			render("orders/create.html.erb")
		else
			redirect("users/sign_in")
		end
	end

	# def update
	# end

	# def show
	# end
end