class ReviewsController < ApplicationController
    before_action :set_birth_control, only: [:index, :new]

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
    end

    private

    def review_params
        params.require(:review).permit(:title, :rating, :description)
    end

    def set_birth_control
        @bc = BirthControl.find_by_id(params[:birth_control_id])
    end


end
