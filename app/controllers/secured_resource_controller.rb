class SecuredResourceController < ApplicationController
  before_action :authenticate_user

  def index
    render json: {
      message: "All good. You only get this message if you're authenticated.",
      user_id: current_user.user_id
    }
  end
end
