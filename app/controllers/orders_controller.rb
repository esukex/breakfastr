class OrdersController < ApplicationController
  def new
		@pastry = Pastry.find(params[:pastry_id])
		@order = @pastry.orders.new
  end
	
	def create
		
	end

  def show
  end
end
