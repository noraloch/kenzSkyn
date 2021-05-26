class UsersController < ApplicationController
  before_action :authenticate, only: [:update, :show]

    def signup
      user = User.create(user_params)
      if user.valid?
        token = JWT.encode({user: user.id}, "2c295f18ac6f632aae2b88194717d428bc8ad9fa90fc71ddf3902d5d6a573119d1237896575f3cb792ea8ec94e3fcef4febff9d125cd59cb61c418955e44f41f", 'HS256')
        render json: {user: UserSerializer.new(user), token: token }
      else
        render json: {errors: user.errors.full_messages}
      end
    end

  # post /login
  def login
    # get the username and password from params
    # lookup a user with their password and give us their info
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = JWT.encode({user: user.id}, "2c295f18ac6f632aae2b88194717d428bc8ad9fa90fc71ddf3902d5d6a573119d1237896575f3cb792ea8ec94e3fcef4febff9d125cd59cb61c418955e44f41f", 'HS256')
      render json: {user: UserSerializer.new(user), token: token }
    else
    # return an error message if not valid
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

#users/id
def show_with_id
  user = User.find(params[:id])
  render json: user
end

#ba
  def show
    render json: @current_user
  end
#ba
  def update
    @current_user.update(user_params)
    user = @current_user
    render json: {user: UserSerializer.new(user)}
  end

  # def create_image
  #     image = Cloudinary::Uploader.upload(params[:image])
  #     user = User.find(params[:id])
  #     user.update(image: image["url"])
  #     render json: image
  # end

  private

  def user_params
    params.permit(
      :first_name,
      :last_name,
      :username,
      :password,
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
