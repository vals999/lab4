class TweetsController < ApplicationController

    #muestra los tweets ordenados por fecha de creación
    def index
        @tweets = Tweet.all.order(created_at: :desc)
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    def create 
        @tweet = Tweet.new(tweets_params)
        if @tweet.save 
            redirect_to @tweet, notice: "Tweet creado"
        else
            render :new, status: :see_other
        end
    end

    private
    def tweets_params
        params.require(:tweet).permit(:content, :monster_id)
    end

end
