class SeasController < ApplicationController
  #define your controller actions here

  def welcome

  end

  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
  end

  def create
    @sea = Sea.new(sea_params)
    if @sea.save
      redirect_to @sea
    else
      render "new"
    end
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
    # redirect_to sea_url(@sea)
    #redirect can take an active record object and can figure it out
  end

  def destroy
    Sea.find(params[:id]).destroy
  
    redirect_to seas_url
    #named routes (Rails prefix + _url)
  end


  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
