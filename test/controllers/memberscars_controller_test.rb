require 'test_helper'

class MemberscarsControllerTest < ActionController::TestCase
  setup do
    @memberscar = memberscars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memberscars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memberscar" do
    assert_difference('Memberscar.count') do
      post :create, memberscar: { automaker: @memberscar.automaker, numberplate: @memberscar.numberplate }
    end

    assert_redirected_to memberscar_path(assigns(:memberscar))
  end

  test "should show memberscar" do
    get :show, id: @memberscar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memberscar
    assert_response :success
  end

  test "should update memberscar" do
    patch :update, id: @memberscar, memberscar: { automaker: @memberscar.automaker, numberplate: @memberscar.numberplate }
    assert_redirected_to memberscar_path(assigns(:memberscar))
  end

  test "should destroy memberscar" do
    assert_difference('Memberscar.count', -1) do
      delete :destroy, id: @memberscar
    end

    assert_redirected_to memberscars_path
  end
end
