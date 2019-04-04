class PlansController < ApplicationController
  before_action :access_controll
  before_action :find_catagory
  def index
    @plans = @catagory.plans
    @photos = @catagory.photos
  end

  def new
    @plan = Plan.new
    render 'new', layout: false
  end

  def edit
    @plan = Plan.find(params[:id])
    render 'edit', layout: false
  end

  def create
    @plan = @catagory.plans.create plan_params
    redirect_to catagory_plans_path(@catagory)
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update plan_params
    redirect_to catagory_plans_path(@catagory)
  end

  def destroy
    Plan.find(params[:id]).destroy
    render body: nil, status: :ok
  end

  protected

  def find_catagory
    @catagory = Catagory.find(params[:catagory_id])
  end

  def plan_params
    params.require(:plan).permit(:name, :price, :image, :description)
  end

  layout 'admin'
end