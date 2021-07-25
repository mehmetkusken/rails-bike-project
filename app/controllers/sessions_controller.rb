class SessionsController < ApplicationController

    def login  
          
    end

    def create
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user
        else
            flash[:errors] = ["Invalid Username or Password!"]
            redirect_to login_path
        end
    end

    def logout
        session.clear
        redirect_to new_user_path
    end

    def omniauth
        user = User.find_or_create_by(uid: request.env['omniauth.auth'][:uid] , provider: request.env['omniauth.auth'][:provider]) do |u|
            u.username = request.env['omniauth.auth'][:info][:first_name]
            u.email = request.env['omniauth.auth'][:info][:email]
            u.password = SecureRandom.hex(15)
        end
            if user.valid?
                session[:user_id] = user.id
                redirect_to user
            else
                redirect_to login_path
            end

        
    end

end
