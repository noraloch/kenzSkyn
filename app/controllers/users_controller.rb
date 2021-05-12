class UsersController < ApplicationController
  # before_action :find_user, only: [:update]

    def signup
      @user = User.create(user_params)
      if @user.valid?
      render json: @user
      else
       render json: {errors: @user.errors.full_messages}
      end
    end

  # post /login
  def login
    # get the username and password from params
    # lookup a user with their password and give us their info
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: user
    else
    # return an error message if not valid
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  # def create_image
  #     image = Cloudinary::Uploader.upload(params[:image])
  #     user = User.find(params[:id])
  #     user.update(image: image["url"])
  #     render json: image
  # end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password_digest,
      :first_name,
      :last_name,
      :age,
      :oily_skin,
      :dry_skin,
      :combination_skin,
      :acne,
      :sport_practice
    )
  end

  # def find_user
  #     user = User.find(params[:id])
  # end
end
