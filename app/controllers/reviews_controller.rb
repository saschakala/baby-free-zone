class ReviewsController < ApplicationController
    def index
        @reviews = Review.bc(params[:birth_control_id])
        @bc = BirthControl.find_by_id(params[:birth_control_id])
    end
    
    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def review_params
        params.require(:review).permit(:title, :rating, :description)
    end


end
