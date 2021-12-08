class GalleryApisController < ApplicationController
  before_action :set_gallery_api, only: [:show, :update, :destroy]

  # GET /gallery_apis
  def index
    @gallery_apis = GalleryApi.all

    render json: @gallery_apis
  end

  # GET /gallery_apis/1
  def show
    render json: @gallery_api
  end

  # POST /gallery_apis


 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_api
      @gallery_api = GalleryApi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gallery_api_params
      params.require(:gallery_api).permit(:albumId, :id, :title, :url, :thumbnailUrl)
    end
end
