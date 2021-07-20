class BicyclesController < ApplicationController
    before_action :set_bicycle, only: [:show, :edit, :update, :destroy]
    before_action :initialize_session
    before_action :increment_visit_count , only: %i[index about]
    before_action :load_cart
    
    def index
        @bicycles = Bicycle.all
        
    end
    
    def show
        
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

    def add_to_cart
        id = params[:id].to_i
        session[:cart] << id unless session[:cart].include?(id)
        redirect_to root_path
    end

    

      private

      def initialize_session
        session[:visit_count] ||=0
        session[:cart] ||=[]
      end

      def load_cart
        @cart = Bicycle.find(session[:cart])
      end

      def increment_visit_count
       session[:visit_count] +=1
        @visit_count = session[:visit_count]
      end

    def set_bicycle
        @bicycle = Bicycle.find(params[:id])
    end

    def bicycle_params
        params.require(:bicycle).permit(:brand, :wheel_size, :color, :price, :urlpicture)
    end
end
