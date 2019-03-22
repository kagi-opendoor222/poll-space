class VotesController < ApplicationController
  def create
    group = Group.find(params[:group_id])
    Vote.create(group_id: params[:group_id], user_id: current_user.id)
  end
end
