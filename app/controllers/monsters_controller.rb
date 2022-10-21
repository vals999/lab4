class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
    if Tweet.where(monster_id: @monster.id).count == 0 
      redirect_to "/tweets/new"
    end
  end
end
