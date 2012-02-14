class StoreController < ApplicationController
  def index
    @products = Product.all
    @cart = current_cart
    inc_counter
  end
  
  private
  
    def inc_counter
      if session[:counter].nil?
        session[:counter] = 1
      else
        session[:counter] += 1
      end
    end

end
