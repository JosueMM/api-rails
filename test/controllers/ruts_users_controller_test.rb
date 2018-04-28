require 'test_helper'

class RutsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruts_user = ruts_users(:one)
  end

  test "should get index" do
    get ruts_users_url, as: :json
    assert_response :success
  end

  test "should create ruts_user" do
    assert_difference('RutsUser.count') do
      post ruts_users_url, params: { ruts_user: { rut_id: @ruts_user.rut_id, user: @ruts_user.user } }, as: :json
    end

    assert_response 201
  end

  test "should show ruts_user" do
    get ruts_user_url(@ruts_user), as: :json
    assert_response :success
  end

  test "should update ruts_user" do
    patch ruts_user_url(@ruts_user), params: { ruts_user: { rut_id: @ruts_user.rut_id, user: @ruts_user.user } }, as: :json
    assert_response 200
  end

  test "should destroy ruts_user" do
    assert_difference('RutsUser.count', -1) do
      delete ruts_user_url(@ruts_user), as: :json
    end

    assert_response 204
  end
end
