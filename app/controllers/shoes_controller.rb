class ShoesController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
  	@shoes = Shoe.all
  end

  def create
  	puts '/////////////////'
  	puts session[:user_id]
  	@shoe = Shoe.create(product: params[:product], amount: params[:amount], user_id: session[:user_id])
  	redirect_to :back
  end

  def destroy
  	Shoe.find(params[:id]).destroy
  	redirect_to :back
  end


end
