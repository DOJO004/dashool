class ProfilesController < ApplicationController
    before_action :set_profile, only: %i[show edit update destroy]
    before_action :check_profile, only: %i[new]
    
    def show
    end

    def new
        @profile = Profile.new
    end

    def create
        @profile = current_user.build_profile(profile_params)
        if @profile.save
            redirect_to profile_path(@profile.id), notice: "Profile was successfully created."
        else
            flash[:alert] = @profile.errors.full_messages
            render :new
        end
    end

    def edit
    end

    def update
        if @profile.update(profile_params)
            redirect_to profile_path(@profile.id), notice: "Profile was successfully updated."
        else
            flash[:alert] = @profile.errors.full_messages
            render :edit
        end
        
    end

    def destroy
    end

    private

    def profile_params
        params.require(:profile).permit(:name, :phone, :address, :descript)
    end

    def set_profile
        @profile = Profile.find(params[:id])
    end

    def check_profile
        if current_user.profile.present?
            redirect_to current_user.profile
        end
    end
end