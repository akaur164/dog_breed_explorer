class BreedsController < ApplicationController
  def index
    @breeds = Breed.includes(:group).order(:name)

    if params[:search].present?
      @breeds = @breeds.where("name LIKE ?", "%#{params[:search]}%")
    end

    @breeds = @breeds.page(params[:page]).per(20)
  end

  def show
    @breed = Breed.find(params[:id])
  end
end