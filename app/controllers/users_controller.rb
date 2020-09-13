class UsersController < ApplicationController
    before_action :authenticate_user!
    def view_infor
        @user = User.where(id: current_user.id)
    end

    def check_info
        
    end
end
