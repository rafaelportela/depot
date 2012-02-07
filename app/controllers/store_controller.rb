class StoreController < ApplicationController
  def index
    if session[:counter].nil?
      session[:counter] = 1
    end
    session[:counter] = session[:counter] + 1
    if session[:counter] > 5
      @has_more_than_five_accesses = true
    else
      @has_more_than_five_accesses = false  
    end 
    @products = Product.all
  end

end
