require 'test_helper'

class SavedRoutesControllerTest < ActionController::TestCase
  setup do
    @saved_route = saved_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_routes)
  end

  test "should create saved_route" do
    assert_difference('SavedRoute.count') do
      post :create, saved_route: { end: @saved_route.end, fare: @saved_route.fare, route: @saved_route.route, start: @saved_route.start }
    end

    assert_response 201
  end

  test "should show saved_route" do
    get :show, id: @saved_route
    assert_response :success
  end

  test "should update saved_route" do
    put :update, id: @saved_route, saved_route: { end: @saved_route.end, fare: @saved_route.fare, route: @saved_route.route, start: @saved_route.start }
    assert_response 204
  end

  test "should destroy saved_route" do
    assert_difference('SavedRoute.count', -1) do
      delete :destroy, id: @saved_route
    end

    assert_response 204
  end
end
