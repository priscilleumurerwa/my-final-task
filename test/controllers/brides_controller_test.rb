require 'test_helper'

class BridesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bride = brides(:one)
  end

  test "should get index" do
    get brides_url
    assert_response :success
  end

  test "should get new" do
    get new_bride_url
    assert_response :success
  end

  test "should create bride" do
    assert_difference('Bride.count') do
      post brides_url, params: { bride: { birth_date: @bride.birth_date, cells: @bride.cells, country: @bride.country, district: @bride.district, email: @bride.email, name: @bride.name, phone_number: @bride.phone_number, sector: @bride.sector, sex: @bride.sex } }
    end

    assert_redirected_to bride_url(Bride.last)
  end

  test "should show bride" do
    get bride_url(@bride)
    assert_response :success
  end

  test "should get edit" do
    get edit_bride_url(@bride)
    assert_response :success
  end

  test "should update bride" do
    patch bride_url(@bride), params: { bride: { birth_date: @bride.birth_date, cells: @bride.cells, country: @bride.country, district: @bride.district, email: @bride.email, name: @bride.name, phone_number: @bride.phone_number, sector: @bride.sector, sex: @bride.sex } }
    assert_redirected_to bride_url(@bride)
  end

  test "should destroy bride" do
    assert_difference('Bride.count', -1) do
      delete bride_url(@bride)
    end

    assert_redirected_to brides_url
  end
end
