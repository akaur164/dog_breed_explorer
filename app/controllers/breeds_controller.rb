class BreedsController < ApplicationController
  def index
    @breeds = Breed.includes(:group).order(:name)

    if params[:search].present?
      @breeds = @breeds.where("name LIKE ?", "%#{params[:search]}%")
    end
  end

  def show
    @breed = Breed.find(params[:id])
  end
end