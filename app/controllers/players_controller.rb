class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :basic_auth, only: [:new, :edit, :destroy]

  def index
    @player = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to players_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit

  end

  def update
    if @player.update(player_params)
      redirect_to player_path
    else
      render :edit,status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy
    redirect_to players_path
  end

  private
  def player_params
    params.require(:player).permit(:player_name, :player_kana, :position_id, :image)
  end

  def set_player
    @player = Player.find(params[:id])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
