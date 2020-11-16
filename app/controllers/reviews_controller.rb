class ReviewsController < ApplicationController
    def index
        @reviews = Review.bc(params[:birth_control_id])
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


end
