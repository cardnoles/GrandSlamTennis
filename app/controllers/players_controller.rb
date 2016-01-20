class PlayersController < ApplicationController

   def index
     @players = Player.all
     @players_sorted = @players.sort_by {|k,v| k[:last_name]}
     @countries = Country.all
     @countries_sorted = @countries.sort_by {|k,v| k[:country]}
   end

   def new
     @players = Player.all
     @player = Player.new
   end

   def create
     player = params[:player].permit(:first_name, :last_name, :birthdate, :age, :country, :ranking, :gender, :tournament, :seed, :draw_line_number, :photo, :notes)
     Player.create(player)
     redirect_to admins_path
   end

   def show
     id = params[:id]
     @player = Player.find(id)
   end

   def edit
    id = params[:id]
    @player = Player.find(id)
   end

   def update
     player = Player.find(params[:id])
     player.update_attributes(params.require(:player).permit(:first_name, :last_name, :birthdate, :age, :country, :ranking, :gender, :tournament, :seed, :draw_line_number, :photo, :notes))
     redirect_to admins_path
   end

   def destroy
     id = params[:id]
     @player = Player.find(id)
     @player.destroy
     redirect_to admins_path
   end

end






