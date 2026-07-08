class GroupsController < ApplicationController
  def index
    @groups = Group.order(:name)
  end

  def show
    @group = Group.find(params[:id])
    @breeds = @group.breeds.order(:name)
  end
end