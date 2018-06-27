class HomeController < ApplicationController
  def index
    @q = Maison.ransack(params[:q])
      @maisons = @q.result
  end

  def logement
    @q = Maison.ransack(params[:q])
      @maisons = @q.result
  end

end
