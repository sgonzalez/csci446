class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  def index
    @games = Game.paginate(:page => params[:page], :per_page => 10, :order => 'created_at')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
end
