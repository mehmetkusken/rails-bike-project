class PaymentsController < ApplicationController
    before_action :set_bicycle
    before_action :set_payment , only:[:update]
    

    def create
        @payment = @bicycle.payments.build(payment_params)
        @payment.user = current_user
        if @payment.save
            redirect_to bicycles_path
        else
            redirect_to @bicycle
        end
    end

    def update
        if @payment.update(payment_params)
            redirect_to bicycles_path
        else
            redirect_to @bicycle
        end
    end


    private
    def set_payment
        @payment = Payment.find(params[:id])
    end

    def set_bicycle
        @bicycle = Bicycle.find(params[:bicycle_id]) if params[:bicycle_id]
    end

    def payment_params
        params.require(:payment).permit(:card_information, :exp_date, :security_code)
    end
end
