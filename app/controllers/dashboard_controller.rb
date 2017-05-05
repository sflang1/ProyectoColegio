class DashboardController < ApplicationController

  def index
    @desempenos = Desempeno.paginate(page: params[:page], per_page:10)
    @estudiantes = Estudiante.paginate(page: params[:page], per_page: 10)
  end
end
