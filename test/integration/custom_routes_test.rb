require 'test_helper'

# Comment. Integration tests will hit all parts of an application including models, controllers, and views.
class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "that /login route opens the login page" do
  	get '/login'
  	assert_response :success
  end

  #Comment. 302 is the HTTP status code for a temporary redirect.
  test "that /logout route close the session" do
  	get '/logout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  #Comment. assert_response nos dice que estamos buscando cierto http.
  test "that /register route opens the sign up page" do
  	get '/register'
  	assert_response :success
  end

  #Comment. Escribimos este test con el fin de evaluar que podemos llegar a la ruta del perfil del usuario.
  test "that a profile page works" do
    get '/jasonseifer'
    assert_response :success
  end
end
