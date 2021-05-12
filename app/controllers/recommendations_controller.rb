class RecommendationsController < ApplicationController
    
    def index
        recommendations = Recommendation.all
        render json: recommendations
    end

    def show
        recommendation = Recommendation.find(params[:id])
        render json: recommendation
    end

    def create
        recommendation = Recommendation.create(recommendation_params)
        render json: recommendation
    end

    def update
        recommendation = Recommendation.find(params[:id]);
        recommendation.update(recommendation_params);
        render json: recommendation
    end

    def destroy
        recommendation = Recommendation.find(params[:id])
        recommendation.destroy
        render json: recommendation 
    end 


    private

    def recommendation_params
        params.require(:recommendation).permit(:user_id, :product_id, :saved)
    end
end
