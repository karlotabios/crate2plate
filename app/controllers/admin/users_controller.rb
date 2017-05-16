class Admin::UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
		@accounts = Account.all
		render("admin/users.html.erb")
	end

	def resolve_new
		@users = User.find(params[:id])
		@accounts = Account.find(params[:id])

		if @users.exists?
			@paymenthistory = PaymentHistory.new()
			render("admin/resolve.html.erb")
		else
			redirect_to admin_user_path
		end
	end

	def resolve_new_unregistered
		@users = User.find(params[:id])
		@accounts = Account.find(params[:id])

		if @accounts.exists?
			@paymenthistory = PaymentHistory.new()
			render("admin/resolve.html.erb")
		else
			redirect_to admin_user_path
		end
	end

	def resolve_create
		@paymenthistory = PaymentHistory.new(params[:id])
		@paymenthistory.save
		redirect_to admin_user_path
	end

	def block
		@users = User.find(params[:id])
		@users.blocked = !@users.blocked
		@users.save
		redirect_to admin_users_path
	end

	def create

	end

	def user_sign_up
		@users = User.new()
		render("admin/sign_up.html.erb")
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

    private

	def permit_everything
		params.require(:user).permit!
		params.require(:payment_history).permit!
	end
end