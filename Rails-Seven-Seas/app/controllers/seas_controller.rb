class SeasController < ApplicationController

    def index
        @seas = Sea.all
    end

    def new
        @sea = Sea.new
    end

    def create
        @sea = Sea.create(sea_params)
        redirect_to @sea
    end

    def show
        @sea = Sea.find(params[:id])
    end

    def edit
        @sea = Sea.find(params[:id])
    end

    def update
        @sea = Sea.find(params[:id])
        @sea.update(sea_params)
        redirect_to @sea
    end

    def destroy
        Sea.destroy(params[:id])
        redirect_to action: :index
    end


    def sea_params
        params.require(:sea).permit(:name, :bio, :image_url, :temperature, :favorite_color, :scariest_creature, :mood, :has_mermaids)
    end
end
