require 'test_helper'

class EngineroomsControllerTest < ActionController::TestCase
  setup do
    @engineroom = enginerooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enginerooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engineroom" do
    assert_difference('Engineroom.count') do
      post :create, engineroom: { noise_id: @engineroom.noise_id, oilcolor_id: @engineroom.oilcolor_id }
    end

    assert_redirected_to engineroom_path(assigns(:engineroom))
  end

  test "should show engineroom" do
    get :show, id: @engineroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engineroom
    assert_response :success
  end

  test "should update engineroom" do
    patch :update, id: @engineroom, engineroom: { noise_id: @engineroom.noise_id, oilcolor_id: @engineroom.oilcolor_id }
    assert_redirected_to engineroom_path(assigns(:engineroom))
  end

  test "should destroy engineroom" do
    assert_difference('Engineroom.count', -1) do
      delete :destroy, id: @engineroom
    end

    assert_redirected_to enginerooms_path
  end
end
