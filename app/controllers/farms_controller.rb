class FarmsController < ApplicationController
  def index
    @farms = Farm.all
  end
end
