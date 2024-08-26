class ItemsController < ApplicationController

  def index

  end

  def player
    @item = Player.all
  end

  def new
    @item = Player.new
  end

  def create
    @item = Player.new(player_params)
    if @item.save
      redirect_to player_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def player_params
    params.require(:player).permit(:player_name, :player_kana, :position_id, :image)
  end
end
