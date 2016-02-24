class SalesController < ApplicationController
	def create
		
		sale = Shoesale.create(shoe_id: params[:shoe_id], user_id: session[:user_id], seller: params[:seller_name])
		redirect_to "/users/#{session[:user_id]}"
	end
end
