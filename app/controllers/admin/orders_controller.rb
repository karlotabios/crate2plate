class Admin::OrdersController < ApplicationController
	before_action :authenticate_user!

	def index
		@orders = Order.all
		@users = User.all
		render("admin/orders.html.erb")
	end

	def create
		if user_signed_in?
			render("orders/create.html.erb")
		else
			redirect("users/sign_in")
		end
	end

	def move_status_up
		@orders = Order.find(params[:id])
		if @orders.status == "Pending"
			@orders.status = "Accepted"
		elsif @orders.status == "Accepted"
			@orders.status = "Processing"
		elsif @orders.status == "Processing"
			@orders.status = "Dispatched"
		elsif @orders.status == "Dispatched"
			@orders.status = "Delivered"
			@delivery = Delivery.create()
			@orders.delivery_id = @delivery.id
			@orders.save!
		end
		@orders.save
		redirect_to admin_orders_path
	end

	def move_status_down
		@orders = Order.find(params[:id])
		if @orders.status == "Accepted"
			@orders.status = "Pending"
		elsif @orders.status == "Processing"
			@orders.status = "Accepted"
		elsif @orders.status == "Dispatched"
			@orders.status = "Processing"
		end
		@orders.save
		redirect_to admin_orders_path
	end

	def cancel_order
		@orders = Order.find(params[:id])
		@orders.status = "Cancelled"
		@orders.save
		redirect_to admin_orders_path
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

    def class_list_params
        params_require(:class_list).permit!
    end
end