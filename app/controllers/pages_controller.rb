class PagesController < ApplicationController
	def index
		@user = User.all
		render("pages/index.html.erb")
	end

	def admin_index
		render("admin/index.html.erb")
	end
end