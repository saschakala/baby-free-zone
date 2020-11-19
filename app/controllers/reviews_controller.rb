class ReviewsController < ApplicationController
    before_action :set_birth_control, only: [:index, :new, :destroy]
    before_action :set_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.bc(params[:birth_control_id])
    end
    
    def new
        @review = Review.new
        # 2.times { @review.side_effects.build}
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to birth_control_review_path(@bc, @review)
        else
            render :new
        end

    end

    def edit
    end

    def update
    end

    def destroy
        @review.destroy
        redirect_to birth_control_reviews_path(@bc)
    end

    private

    def review_params
        params.require(:review).permit(:title, :rating, :description, :side_effects_attributes [:id, :name])
    end

    def set_birth_control
        @bc = BirthControl.find_by_id(params[:birth_control_id])
    end

    def set_review
        @review = Review.find_by_id(params[:id])
    end


end
