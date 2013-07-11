class ActorController < ApplicationController

  def index
    @actors = Actor.all
  end

end