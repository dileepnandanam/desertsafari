class CatagoriesController < ApplicationController
  def show
    @catagory = Catagory.find(params[:id])
    @plans = @catagory.plans
  end

  def index
    @catagories = Catagory.all
    @settings = Setting.all
  end

  def new
    @catagory = Catagory.new
    render 'new', layout: false
  end

  def edit
    @catagory = Catagory.find(params[:id])
    render 'edit', layout: false
  end

  def create
    @catagory = Catagory.create catagory_params
    render 'catagory', layout: false
  end

  def update
    @catagory = Catagory.find(params[:id])
    @catagory.update catagory_params
    render 'catagory', layout: false
  end

  def destroy
    Catagory.find(params[:id]).destroy
    render body: nil, status: :ok
  end

  protected

  def catagory_params
    params.require(:catagory).permit(:name, :description, :short_description, :price)
  end
end