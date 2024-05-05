class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]

  def show
    user = User.find(@profile.user_id)
    @cocktails = Cocktail.where(user_id: user.id)
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

  def edit; end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path(@profile.id), notice: "Profile was successfully updated."
    else
      flash[:alert] = @profile.errors.full_messages
      render :edit
    end
  end

  def destroy; end

  private

  def profile_params
    params.require(:profile).permit(:name, :phone, :address, :descript, :avatar)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
