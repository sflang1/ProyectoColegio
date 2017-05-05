class EstudiantesController < ApplicationController

  def index
    @desempenos = Desempeno.paginate(page: params[:page], per_page:10)
  end

  def show
    @desempeno = Desempeno.find(params[:id])
  end

  def new
    @desempeno = Desempeno.new
  end

  def edit
    @desempeno = Desempeno.find(params[:id])
  end

  def create
    desempeno = Desempeno.create(form_params)
    if desempeno.persisted?
      flash[:notice] = "Desempeño creado exitosamente"
      redirect_to root_path()
    else
      flash[:alert] = "Desempeño no creado, #{desempeno.errors.full_messages}"
      redirect_to new_desempeno_path()
    end
  end

  def update
    desempeno = Desempeno.update(form_params)
    flash[:notice] = "Desempeño actualizado exitosamente"
    redirect_to root_path()
  end

  def destroy
    desempeno = Desempeno.find(params[:id])
    if desempeno.destroy
      flash[:notice] = "Desempeño borrado exitosamente"
    else
      flash[:alert] = "El desempeño no pudo ser borrado"
    end
    redirect_to root_path()
  end

  def show_search
    @estudiantes = Estudiante.all.paginate(page: params[:page], per_page: 10)
    @grado_collection = Grado.pluck(:nombre, :id)
    @grupo_collection = Grupo.pluck(:nombre, :id)
  end

  def search
    @estudiantes = Estudiante.joins(:grupo, :grado).where(grupos: {id: search_params[:grupo_id]}, grados: {id: search_params[:grado_id]})
    respond_to do |format|
      format.js
    end
  end

  private
  def form_params
    params.require(:desempeno).permit(:titulo, :descripcion)
  end

  def search_params
    params.require(:search).permit(:grupo_id, :grado_id)
  end
end
