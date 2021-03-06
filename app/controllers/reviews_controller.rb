class ReviewsController < ApplicationController
    before_action :set_birth_control, only: [:index, :new, :create, :edit, :update, :destroy]
    before_action :set_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.bc(params[:birth_control_id])
    end
    
    def new
        if user_signed_in?
            @review = Review.new
        else
            flash[:must_login] = "You must be signed in to leave a review."
            redirect_to new_user_session_path
        end
    end

    def create
        @review = current_user.reviews.build(rating: review_params[:rating], birth_control_id: @bc.id, description: review_params[:description], title: review_params[:title])
        @review.side_effects << set_side_effects
        # @review = Review.new(review_params)
        # binding.pry
        if @review.save
            redirect_to birth_control_reviews_path
        else
            render :new
        end

    end


    def edit
    end

    def update
        if @review
            @review.update(rating: review_params[:rating], birth_control_id: @bc.id, description: review_params[:description], title: review_params[:title])
            @review.side_effects = set_side_effects
            if @review.errors.any?
                render 'edit'
            else
                redirect_to birth_control_reviews_path (@bc)
            end
        else
            render 'edit'
        end
    end

    def destroy
        @review.destroy
        redirect_to birth_control_reviews_path(@bc)
    end

    private

    def review_params
        params.require(:review).permit(:title, :rating, :description, side_effect: [id: []])
    end

    def set_birth_control
        @bc = BirthControl.find_by_id(params[:birth_control_id])
    end

    def set_side_effects
        @effects_ids = review_params[:side_effect][:id]
        @effects = []
        @effects_ids.each do |id|
            if id != ""
            side_effect = SideEffect.find_by_id(id)
            @effects << side_effect
            end
        end
        @effects
    end


    def set_review
        @review = Review.find_by_id(params[:id])
    end


end
