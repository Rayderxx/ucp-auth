class Api::UsersController < Api::ApiController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = current_user.update_attributes(params_user)
    end

    def profile
        render json: current_user
    end

    def users_formation
        render json: current_user.recent_promotion.users
    end

    def update_profile
        current_user.update_attributes(params_user)
        render json: current_user
    end

    private
        def params_user
            params.require(:user).permit(:email, information_attributes: [:description, :phone, :facebook, :twitter, :linkdnl])
        end

end
