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
    doggo_type = params[:doggo_type]

    erb :bork_form, :locals == { 'doggo_type' => doggo_type }
  end

  get '/bork/#{doggo_type}/' do
    erb :bork_flavor
  end

  post '/bork/#{doggo_type}/' do
    doggo_type = params[:doggo_type]
    bork_type = params[:bork_type]
    response = params[:response]

    "#{response}"

    erb :bork_flavor, :locals == { 'response' => response, 'doggo_type' => doggo_type, 'bork_type' => bork_type }

end
