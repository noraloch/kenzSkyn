class RecommendationsController < ApplicationController
    def index
        recommendations = Recommendation.all
        render json: recommendations
    end

    def create
        recommendation = Recommendation.create(recommendation_params)
        render json: recommendation
    end


    private

    def recommendation_params
        params.require(:recommendation).permit(:user_id, :product_id, :saved)
    end
end
