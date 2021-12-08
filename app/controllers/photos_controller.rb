class PhotosController < ApplicationController
  def show
    @photo = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    render json: @photo
  end
end
