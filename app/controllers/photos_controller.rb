class PhotosController < ApplicationController
  before_action :access_controll
  def create
    Photo.create(params.require(:photo).permit(:image, :catagory_id))
    redirect_to request.referer
  end

  def destroy
    Photo.find(params[:id]).delete
    render body: nil, status: :ok
  end
end