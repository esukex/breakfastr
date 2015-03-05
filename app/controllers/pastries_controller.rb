class PastriesController < ApplicationController
###########################################################################################################
	def index
		@pastries = [
									{
										name:"Croissant",
										price_in_pence:350,
										description:"Butter pastry croissant"
									},
									{
										name:"Pan au Chocolat",
										price_in_pence:400,
										description:"Butter pastry with a chocolate filling"
									}
								]
  end
###########################################################################################################
  def show
		
  end
###########################################################################################################
  def new
		
  end

  def edit
		
  end
end
