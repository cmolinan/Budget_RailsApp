class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def new
    @group = Group.new
    @icons = User.all
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id

    if @group.save
      flash[:notice] = 'Category was successfully created.'
      redirect_to groups_path
    else
      flash[:error] = 'Error creating Group'
      redirect_to new_groups_path(@group)
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
