class EntitiesController < ApplicationController

  def index
    @group = Group.where(user_id: current_user.id, id: params[:group_id])
  end

  def new
    @entity = Entity.new
    @group = Group.find(params[:group_id])
  end

  def create
    @group = Group.find(params[:group_id])
    @entity = Entity.new(entity_params)

    @entity.user_id = current_user.id
    @entity.group_id = @group.id

    if @entity.save
      flash[:notice] = 'Transaction created !'
      redirect_to group_entities_path
    else
      flash[:error] = 'Error !'
      redirect_to new_group_entity_path(@group)
    end
  end

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
