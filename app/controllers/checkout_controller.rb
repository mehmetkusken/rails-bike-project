class CheckoutController < ApplicationController
    def create
        @bicycle = Bicycle.find(params[:id])
    end

    def card
        @bicycle = Bicycle.find(params[:id])
        @payment = Payment.find_or_initialize_by(user: current_user, bicycle: @bicycle)
        
    end

    def success
    end


end
