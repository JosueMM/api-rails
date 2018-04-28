require 'test_helper'

class RutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rut = ruts(:one)
  end

  test "should get index" do
    get ruts_url, as: :json
    assert_response :success
  end

  test "should create rut" do
    assert_difference('Rut.count') do
      post ruts_url, params: { rut: { date: @rut.date, end: @rut.end, start: @rut.start, time: @rut.time } }, as: :json
    end

    assert_response 201
  end

  test "should show rut" do
    get rut_url(@rut), as: :json
    assert_response :success
  end

  test "should update rut" do
    patch rut_url(@rut), params: { rut: { date: @rut.date, end: @rut.end, start: @rut.start, time: @rut.time } }, as: :json
    assert_response 200
  end

  test "should destroy rut" do
    assert_difference('Rut.count', -1) do
      delete rut_url(@rut), as: :json
    end

    assert_response 204
  end
end
