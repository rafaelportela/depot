class StoreController < ApplicationController
  def index
    @products = Product.all
    inc_counter
    
    notice = "session " + "XXX " + session[:counter].to_s
    puts notice
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
