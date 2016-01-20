class AdminsController < ApplicationController

  def index
    @players = Player.all
    @players_sorted = @players.sort_by {|k,v| k[:last_name]}

  end









end
