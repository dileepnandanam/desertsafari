class PublicController < ApplicationController
  def show
    @catagories = Catagory.all
  end
end