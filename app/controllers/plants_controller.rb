class PlantsController < ApplicationController

    def index
        render json: Plant.all
    end

    def show
        render json: Plant.find(params[:id])
    end

    def create
        render Json: Plant.create(plant_params)
    end



    private

    def plant_params
        params.permit(:name, :image, :price)
    end


end
