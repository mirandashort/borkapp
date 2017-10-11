require 'sinatra'

  set :port, 4567
  set :static, true
  set :public_folder, "static"
  set :views, "views"

  get '/' do
    return 'Bork it'
  end

  get '/bork/' do
    erb :bork_form
  end

  post '/bork/' do
    doggo_type = params[:doggo_type] || "Doggy"

    erb :bork_form, :locals == { 'doggo_type' => doggo_type }

end
