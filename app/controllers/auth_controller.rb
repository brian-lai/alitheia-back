class AuthController < ApplicationController

  def index
    render json: { message: "Welcome to a simple API server with Auth0"}
  end

end
