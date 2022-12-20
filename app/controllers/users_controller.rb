class UsersController < ApplicationController
  before_action :set_vars, only: %i[index]

  def index; end

  private

  def set_vars
    @user = current_user
  end
end