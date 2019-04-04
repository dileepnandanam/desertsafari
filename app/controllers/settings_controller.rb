class SettingsController < ApplicationController
  before_action :access_controll
  def edit
  	@setting = Setting.find(params[:id])
  	render 'edit', layout: false
  end

  def update
  	@setting = Setting.find(params[:id])
  	@setting.update params.require(:setting).permit(:value)
  	render 'setting', layout: false
  end
end