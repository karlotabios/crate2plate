class PagesController < ApplicationController
	def index
		render("customer/index.html.erb")
	end
end