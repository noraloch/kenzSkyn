class UsersController < ApplicationController
    before_action :find_user, only: [:update]

    def show 
        render json: user
    end 

    def update 
        user.update(user_params)
        render json: user
    end



    private

        def user_params
            params.require(:user).permit(:username, :password_digest, :first_name, :last_name, :age, :preferred_skincare, :oily_skin, :dry_skin, :combination_skin, :acne, :sport_practice)
        end

        def find_user
            user = User.find(params[:id])
        end
end