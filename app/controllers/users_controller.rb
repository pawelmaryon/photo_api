class UsersController < ApplicationController
  def show
    @user = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
    render json: @user
  end
end
