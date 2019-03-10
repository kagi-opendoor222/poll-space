class ThemesController < ApplicationController
  def index

  end
  def new
    @theme = Theme.new
  end
  def create
    theme = Theme.create(theme_params)
    params[:group][:number_of_groups].to_i.times do |i|
      group = theme.groups.create(group_params(i))
    end
    redirect_to themes_path
  end
  private
  def theme_params
    params.require(:theme).permit(:name)
  end
  def group_params(i)
    params.require(:group).require("group#{i}").permit(:name, :message)
  end
end
