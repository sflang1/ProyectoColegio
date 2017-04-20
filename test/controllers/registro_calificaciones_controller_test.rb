require 'test_helper'

class RegistroCalificacionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registro_calificaciones_index_url
    assert_response :success
  end

end
