require '.borkapp/bork_form.rb'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_my_default
    get '/'
    assert_equal "Borking it up", last_response.body
  end

  def test_bork_form
    get '/bork/'
    assert last_response.ok?
    assert last_response.body.include?('doggo_type')
  end

  def test_bork_form_post
    post '/bork', params={:doggo_type => 'ween'}
    assert last_response.ok?
    asser last_response.body.include?('Your bork sounds like this:')
  end
end
