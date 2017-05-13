class Admin::PagesController < ApplicationController
	def index
		@user = User.all
		render("admin/index.html.erb")
	end
end