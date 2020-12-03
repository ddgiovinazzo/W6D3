class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        
    end

    def create
        render json: params
    end

    def show
        render json: params.
    end
    private
    
    def post_params
        params.require(:users).permit()
    end
end