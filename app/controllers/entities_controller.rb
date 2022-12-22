class EntitiesController < ApplicationController
  def index
    @group = Group.where(user_id: current_user.id, id: params[:group_id])
  end

  def new; end  
end
