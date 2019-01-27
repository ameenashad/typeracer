class GamePlayersController < ApplicationController
  def update
    @gameplayer = GamePlayer.find params[:id]
    @gameplayer.update(end_time: DateTime.now)
    redirect_to player_path(@gameplayer.player_id, gameplayer: @gameplayer.id)
  end
end
