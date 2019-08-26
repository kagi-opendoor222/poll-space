class VotesController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
    group = Group.find(params[:group_id])
    Vote.create(group_id: params[:group_id], user_id: current_user.id)
    redirect_to theme_path(group.theme.id)
  end
end
