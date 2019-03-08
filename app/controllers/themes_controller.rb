class ThemesController < ApplicationController
  def index

  end
  def new
    @theme = Theme.new
  end
  def create
    binding.pry
    theme = Theme.create(theme_params)
  end
  private
  def theme_params
    params.require(:theme).permit(:name)
  end
end
