class StaticPagesController < ApplicationController

  def index
    @all_gossips = Gossip.all
  end

  def contact
  end

  def team
  end

  def profile
  end
end
