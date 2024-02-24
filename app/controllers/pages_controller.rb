class PagesController < ApplicationController
  def home
  end


  def game
    # redirect_to "/game/Godot.html"
    redirect_to "/game/SoulsGameTemplate.html"
  end
end
