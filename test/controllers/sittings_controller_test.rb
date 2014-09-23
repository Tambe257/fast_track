require 'test_helper'

class SittingsControllerTest < ActionController::TestCase
  setup do
    @sitting = sittings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sittings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sitting" do
    assert_difference('Sitting.count') do
      post :create, sitting: { comment: @sitting.comment, date: @sitting.date }
    end

    assert_redirected_to sitting_path(assigns(:sitting))
  end

  test "should show sitting" do
    get :show, id: @sitting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sitting
    assert_response :success
  end

  test "should update sitting" do
    patch :update, id: @sitting, sitting: { comment: @sitting.comment, date: @sitting.date }
    assert_redirected_to sitting_path(assigns(:sitting))
  end

  test "should destroy sitting" do
    assert_difference('Sitting.count', -1) do
      delete :destroy, id: @sitting
    end

    assert_redirected_to sittings_path
  end
end
