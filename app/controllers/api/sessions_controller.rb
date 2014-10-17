class Api::SessionsController < Api::ApiController        
    def create_user
        @user = User.find_for_database_authentication(email: params['email'])
        if @user && @user.valid_password?(params['password'])
            sign_in @user
            render json: @user, :root => 'user'
        else
            render json: {
                errors: "wrong login"
            }
        end
    end

    def signed_in
        render json: { user_signed_in:  user_signed_in? }
    end

    def is_admin
        admin = current_user.has_role? :admin
        render json: {is_admin: admin }
    end

    def destroy
        current_user.authentication_token = ""
        current_user.save
        sign_out current_user
        render json: {
            results: "logout"
        }
    end
end
