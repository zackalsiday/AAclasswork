class UsersController < ApplicationController
    def create 
        @user = User.create(user_params)
            if @user.save 
                log_in!(@user)
                redirect_to api_users_url
            else 
                flash[:errors] = @user.errors.full_messages
                # render :new 
            end
        
    end

    
  def user_params 
    params.require(:user).permit(:username, :password)
  end
end

