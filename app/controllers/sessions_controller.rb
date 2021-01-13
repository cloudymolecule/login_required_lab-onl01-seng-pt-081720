class SessionsController < ApplicationController
    def new
        render 'login'
    end

    def create
        if params[:name] == "" || params[:name] == nil 
            redirect_to action: 'new'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        
        if session[:name]
            session[:name] = nil
        end
    end
end