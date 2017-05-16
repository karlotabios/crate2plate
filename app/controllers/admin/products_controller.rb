class Admin::ProductsController < ApplicationController
	before_action :authenticate_user!

	# def index
	# 	@products = Product.all
	# 	@orders = Order.all
	# 	render("admin/supplies.html.erb")
	# end

	def create
		if user_signed_in?
			render("orders/create.html.erb")
		else
			redirect("users/sign_in")
		end
	end

	# def create

	# end

	def new
		@products = Product.find(params[:id])
		render("admin/edit_product.html.erb")
	end

	def edit

	end

	# def show

	# end

	# def update

	# end

	def destroy
        @products = Product.find(params[:id])
        @products.destroy!
        redirect_to admin_supplies
    end
end