class AlbumsController < ApplicationController
def index
  @albums = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
  
  render json: @albums
end

def show
  @album = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{params[:id]}")
  render json: @album
end
end
