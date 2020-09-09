class UsersController < ApplicationController
    def view_infor
        @user = User.find(current_user.id)
    end
end
