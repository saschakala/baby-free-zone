class ReviewsController < ApplicationController
    def index
        @reviews = Review.bc(params[:birth_control_id])
    end

    
    def new
    end
end
