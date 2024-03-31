class UsersController < ApplicationController
    before_action :set_user, olny: %i[show setting]
    before_action :authenticate_user! 

    def show
    end

    def setting
    end

    private

    def set_user
        @user = User.find(current_user.id)
    end
end
