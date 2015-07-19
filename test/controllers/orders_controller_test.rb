require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
    assert_not_nil assigns(:movies)
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: {tickets: '4'}
    end
    assert_redirected_to edit_order_path(assigns(:order))
  end

  test "should get show" do
    get :show, { id: orders(:dereks_order).id }
    assert_response :success
    assert_not_nil assigns(:order)
  end

  test "should get edit" do
    get :edit, { id: orders(:dereks_order).id }
    assert_response :success
    assert_not_nil assigns(:order)
  end

  test "should update order" do
    order = orders(:stus_order)
    email = order.email
    patch :update, { id: order.id, order: { email: "newemail@example.com" } }
    assert_not_equal email, Order.find(orders(:stus_order).id).email
    assert_redirected_to order_path(order)
  end

  test "should destroy order" do
    order = orders(:dereks_order)
    delete :destroy, { id: order.id }
    assert_nil Order.find_by(id: orders(:dereks_order).id)
    assert_redirected_to movies_path
  end

  test "should get movie review" do
    get :movie_order_review, { id: movies(:interstellar).id }
    assert_response :success
    assert_not_nil assigns(:movie)
  end
end
