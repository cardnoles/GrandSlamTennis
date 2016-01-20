class StaticPagesController < ApplicationController

  def home
    @tournaments = Tournament.all
    redirect_to tournaments_path if signed_in?
  end

  def about
  end

end
