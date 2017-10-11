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
    redirect '/bork/me/'

    erb :bork_form, :locals == { 'doggo_type' => doggo_type }
  end

  get '/bork/me/' do
    erb :bork_flavor
  end

  post '/bork/me/' do
    doggo_type = params[:doggo_type] || "Doggy"
    bork_type = params[:bork_type] || "woofs"

    erb :bork_flavor, :locals == { 'doggo_type' => doggo_type, 'bork_type' => bork_type }

end
