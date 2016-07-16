class ConexionController < ApplicationController
def index
	@alumno = Alumno.all
end
def show
	@alumno = Alumno.find(params[:id])
end

def new
	@alumno = Alumno.new
end
#POST /alumnos
def create 
	@alumno = Alumno.new ({nombre: params[:alumno] [:nombre],
							carne: params[:alumno] [:carne],
							curso: params[:alumno] [:curso],
						  carrera: params[:alumno] [:carrera]})
	if @alumno.save
		redirect_to action: 'index'
	else
		render :new
	end
end
	
end