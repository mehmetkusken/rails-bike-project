class BicyclesController < ApplicationController
    before_action :set_bicycle, only: [:show, :edit, :update, :destroy]
    
    
    def index
        @params = params.permit(:search).to_h
        @bicycles = Bicycle.filter_by_params(@params)
    end
    
    def show
        @bicycle = Bicycle.find(params[:id])
        @payment = Payment.find_or_initialize_by(user: current_user, bicycle: @bicycle)
        
    end

    def new
        @bicycle = Bicycle.new
    end

    def create
        @bicycle = Bicycle.create(bicycle_params)
        if @bicycle.save
        redirect_to @bicycle
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        if @bicycle.update(bicycle_params)
            redirect_to @bicycle
        else
            render :edit
        end
    end

    def destroy
        @bicycle.destroy
        redirect_to bicycles_path
    end


      private

    def set_bicycle
        @bicycle = Bicycle.find(params[:id])
    end

    def bicycle_params
        params.require(:bicycle).permit(:brand, :wheel_size, :color, :price, :urlpicture)
    end
end
