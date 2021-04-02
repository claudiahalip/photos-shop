class UsersContoller > ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to items_path
        else
            redirect_to signup_path
    end
end