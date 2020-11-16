class BirthControlsController < ApplicationController
    before_action :set_birth_control

    def index
        @birthcontrols = BirthControl.all
    end

    def show
    end


    private

    def set_birth_control
        @bc = BirthControl.find_by_id(params[:id])
    end

    # def bc_params
    #     params.require(:birth_control).permit(:name, :method, :active_ingredient, :dosage, :hormone_type, :generic_name)
    # end


end
