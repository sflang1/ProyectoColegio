require 'test_helper'

class ConfigurarDesempenosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get configurar_desempenos_index_url
    assert_response :success
  end

end
