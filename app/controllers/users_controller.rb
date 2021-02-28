class UsersController < ApplicationController
    # before_action :find_user, only: [:update]

    # post /login
    # get the username and password from params 
    # lookup a user with their password and give us their info
    # return an error message if not valid
    def login
        #fake auth
        render json: User.first
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



    private

        def user_params
            params.require(:user).permit(
                :username,
                :password_digest,
                :image,
                :first_name,
                :last_name,
                :age,
                :oily_skin,
                :dry_skin,
                :combination_skin,
                :acne,
                :sport_practice)
        end

        # def find_user
        #     user = User.find(params[:id])
        # end
end