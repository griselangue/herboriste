require 'test_helper'

class PoisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poison = poisons(:one)
  end

  test "should get index" do
    get poisons_url
    assert_response :success
  end

  test "should get new" do
    get new_poison_url
    assert_response :success
  end

  test "should create poison" do
    assert_difference('Poison.count') do
      post poisons_url, params: { poison: { action: @poison.action, infoComplementaire: @poison.infoComplementaire, medium: @poison.medium, partiePlante: @poison.partiePlante, plante_id: @poison.plante_id, toxicite: @poison.toxicite } }
    end

    assert_redirected_to poison_url(Poison.last)
  end

  test "should show poison" do
    get poison_url(@poison)
    assert_response :success
  end

  test "should get edit" do
    get edit_poison_url(@poison)
    assert_response :success
  end

  test "should update poison" do
    patch poison_url(@poison), params: { poison: { action: @poison.action, infoComplementaire: @poison.infoComplementaire, medium: @poison.medium, partiePlante: @poison.partiePlante, plante_id: @poison.plante_id, toxicite: @poison.toxicite } }
    assert_redirected_to poison_url(@poison)
  end

  test "should destroy poison" do
    assert_difference('Poison.count', -1) do
      delete poison_url(@poison)
    end

    assert_redirected_to poisons_url
  end
end
