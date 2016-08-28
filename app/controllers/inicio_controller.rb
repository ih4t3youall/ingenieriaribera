class InicioController < ApplicationController
  def index
  end
  def contacto
  end
  def nosotros
    
    @ingenieros = Ingeniero.all
    
  end
  def cursos
  end
  
  def prueba
    @ingenieros =  Ingeniero.where('especialidad = ?','mecanica')
     
    
  end
  
  def bolsaTrabajo
  end  
  
  
end
