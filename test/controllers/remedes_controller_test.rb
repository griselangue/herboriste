require 'test_helper'

class RemedesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remede = remedes(:one)
  end

  test "should get index" do
    get remedes_url
    assert_response :success
  end

  test "should get new" do
    get new_remede_url
    assert_response :success
  end

  test "should create remede" do
    assert_difference('Remede.count') do
      post remedes_url, params: { remede: { infoComplementaire: @remede.infoComplementaire, maux: @remede.maux, modeAdministration: @remede.modeAdministration, partiePlante: @remede.partiePlante, plante_id: @remede.plante_id } }
    end

    assert_redirected_to remede_url(Remede.last)
  end

  test "should show remede" do
    get remede_url(@remede)
    assert_response :success
  end

  test "should get edit" do
    get edit_remede_url(@remede)
    assert_response :success
  end

  test "should update remede" do
    patch remede_url(@remede), params: { remede: { infoComplementaire: @remede.infoComplementaire, maux: @remede.maux, modeAdministration: @remede.modeAdministration, partiePlante: @remede.partiePlante, plante_id: @remede.plante_id } }
    assert_redirected_to remede_url(@remede)
  end

  test "should destroy remede" do
    assert_difference('Remede.count', -1) do
      delete remede_url(@remede)
    end

    assert_redirected_to remedes_url
  end
end
