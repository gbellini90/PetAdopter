class Api::V1::AuthController < ApplicationController

    def create
      @user = User.find_by(username: params["username"])
      if (@user && @user.authenticate(params["password"]))
        render json: {
          username: @user.username,
          name: @user.name,
          matches: @user.matches,
          pets:@user.pets,
          id: @user.id,
          token: get_token(payload(@user.username, @user.id))
        }
      else
        render json: {
          errors: "Those credentials don't match anything we have in our database"}, status: :unauthorized
      end
    end

  end
