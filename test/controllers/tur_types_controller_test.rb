require 'test_helper'

class TurTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tur_type = tur_types(:one)
  end

  test "should get index" do
    get tur_types_url
    assert_response :success
  end

  test "should get new" do
    get new_tur_type_url
    assert_response :success
  end

  test "should create tur_type" do
    assert_difference('TurType.count') do
      post tur_types_url, params: { tur_type: { name: @tur_type.name } }
    end

    assert_redirected_to tur_type_url(TurType.last)
  end

  test "should show tur_type" do
    get tur_type_url(@tur_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_tur_type_url(@tur_type)
    assert_response :success
  end

  test "should update tur_type" do
    patch tur_type_url(@tur_type), params: { tur_type: { name: @tur_type.name } }
    assert_redirected_to tur_type_url(@tur_type)
  end

  test "should destroy tur_type" do
    assert_difference('TurType.count', -1) do
      delete tur_type_url(@tur_type)
    end

    assert_redirected_to tur_types_url
  end
end
