class TemperamentsController < ApplicationController
  def index
    @temperaments = Temperament.order(:name)
  end

  def show
    @temperament = Temperament.find(params[:id])
    @breeds = @temperament.breeds.order(:name)
  end
end