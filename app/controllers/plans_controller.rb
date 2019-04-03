class PlansController < ApplicationController
  before_action :find_catagory
  def index
    @plans = Plan.all
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
    render 'plan', layout: false
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update catagory_params
    render 'plan', layout: false
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
    params.require(:plan).permit(:name, :price)
  end
end