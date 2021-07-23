class CheckoutController < ApplicationController
    def create
        @bicycle = Bicycle.find(params[:id])
        if @bicycle.nil?
            redirect_to checkout_create_path
        return
        end
        @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
                name: @bicycle.brand,
                amount: @bicycle.price,
                currency: 'usd',
                quantity: 1
            }],
            success_url: checkout_success_url,
            cancel_url: checkout_cancel_url

        )
        respond_to do |format|
            format.html.erb
        end
    

    end

    def success
    end

    def cancel
    end

end
