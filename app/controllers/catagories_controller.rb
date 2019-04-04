class CatagoriesController < ApplicationController
  def show
    @catagory = Catagory.find(params[:id])
    @plans = @catagory.plans
  end

  def index
    @catagories = Catagory.all
    @settings = [
      Setting.where(name: 'Site introduction', identifier: 'site_introduction').first_or_create,
      Setting.where(name: 'Youtube embed code', identifier: 'youtube_embed_code').first_or_create,
      Setting.where(name: 'Contact number', identifier: 'contact_number').first_or_create
    ]
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
    redirect_to catagories_path
  end

  def update
    @catagory = Catagory.find(params[:id])
    @catagory.update catagory_params
    redirect_to catagories_path
  end

  def destroy
    Catagory.find(params[:id]).destroy
    render body: nil, status: :ok
  end

  layout 'admin'

  protected

  def catagory_params
    params.require(:catagory).permit(:name, :description, :short_description, :price, :image)
  end
end