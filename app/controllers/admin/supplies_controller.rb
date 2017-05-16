class Admin::SuppliesController < ApplicationController
	before_action :authenticate_user!

	def index
		@products = Product.all
		@orders = Order.all
		render("admin/supplies.html.erb")
	end

	def create
		if user_signed_in?
			render("orders/create.html.erb")
		else
			redirect("users/sign_in")
		end
	end

	# def create

	# end

	# def new

	# end

	# def edit

	# end

	# def show

	# end

	def update

	end

	def destroy
        @class_list = Class_list.find(params[:id])
        @class_list.destroy!
        redirect_to class_list_path
    end
end