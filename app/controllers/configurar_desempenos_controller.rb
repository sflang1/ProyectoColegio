class ConfigurarDesempenosController < ApplicationController
  
  	#Orden general: index,show,new,edit,create,update,destroy

	def index
		@desempenos = Desempeno.paginate(:page => params[:page], :per_page => 2).all()
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
		@desempeno = Desempeno.new(desempeno_params)

		if @desempeno.save
			redirect_to "/configurar_desempenos"
		else			
			render 'new'
		end
	end

	def mivista

	end
	
	def update
		@desempeno = Desempeno.find(params[:id])
 
  		if @desempeno.update(desempeno_params)
    		redirect_to "/configurar_desempenos"
    	else
		    render 'edit'
		 end
	end

	def destroy
		@desempeno = Desempeno.find(params[:id])

		@desempeno.destroy
		redirect_to "/configurar_desempenos"		
	end		

	private
  		def desempeno_params
    		params.require(:desempeno).permit(:titulo, :descripcion)
  		end
end
