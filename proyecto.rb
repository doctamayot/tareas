require 'sinatra'
require 'make_todo'

get '/' do
    @tareas = Tarea.all    
    erb :home 
end


post '/' do
    Tarea.create(params[:content])
    redirect '/'
end

patch '/update/:id' do
    Tarea.update(params[:id])
    redirect '/'
  end 
  
  delete '/delete/:id' do
    Tarea.destroy(params[:id])
    redirect '/'
  end  