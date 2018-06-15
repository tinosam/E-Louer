class HomeController < ApplicationController
  def index
  end

  def logement
    @q = Maison.ransack(params[:q])
      @maisons = @q.result
  end

end
