class GamesController < ApplicationController
  def index
    @game = Game.new
  end

  def create
    @game = Game.create
    redirect_to game_path(@game.id)
  end

  def show
    @game = Game.find params[:id]
    @player = current_player
    @paragraph = Paragraph.find_by(game_id: @game.id)
    @paragraph = if @paragraph.present?
      @paragraph
    else
      @paragraph = Paragraph.new(game_id: @game.id, text: LiterateRandomizer.paragraph)
      @paragraph.save
      @paragraph
    end #text: LiterateRandomizer.paragraph)
    @game_player = GamePlayer.create game_id: @game.id, player_id: @player.id, start_time: DateTime.now
  end
end
