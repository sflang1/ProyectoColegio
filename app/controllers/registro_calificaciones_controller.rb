class RegistroCalificacionesController < ApplicationController
  
  	def index
		@estudiantes = Estudiante.paginate(:page => params[:page], :per_page => 2).all()		
	end

	def show
		
	end

	def new
		
	end

	def edit
		
	end

	def create
		
	end

	def update
		
	end

	def destroy
			
	end		
end
