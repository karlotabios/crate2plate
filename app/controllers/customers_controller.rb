class CustomersController < ApplicationController
	def index
		@products = Product.all
		render("customers/index.html.erb")
	end
end