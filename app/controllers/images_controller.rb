class ImagesController < ApplicationController
  before_action :access_controll
  def edit
  	@image = Image.find(params[:id])
  	render 'edit', layout: false
  end

  def update
  	@image = Image.find(params[:id])
  	@image.update(params.require(:image).permit(:file))
  	redirect_to request.referer
  end
end