class VotesController < ApplicationController
  def create
    group = Group.find(params[:group_id])
    Vote.create(group_id: params[:group_id])
  end
end
