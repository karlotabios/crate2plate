class Admin::UsersController < ApplicationController
	def list
		@Customers = User.all
		render("admin/customer.html.erb")
	end

	def index
		@products = Product.all
		render("customers/index.html.erb")
	end

	def create

	end

	def new
	end

	def edit
	end

	def show
	end

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