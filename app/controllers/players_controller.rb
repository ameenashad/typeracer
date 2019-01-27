class PlayersController < ApplicationController
  before_action :authenticate_player!
  def show
    @player = Player.find params[:id]
    @gameplayer = GamePlayer.find params[:gameplayer]
  end
end
