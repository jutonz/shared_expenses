require 'test_helper'

class SharedExpensesControllerTest < ActionController::TestCase
  setup do
    @shared_expense = shared_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shared_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared_expense" do
    assert_difference('SharedExpense.count') do
      post :create, shared_expense: { amount: @shared_expense.amount, duedate: @shared_expense.duedate, parties: @shared_expense.parties }
    end

    assert_redirected_to shared_expense_path(assigns(:shared_expense))
  end

  test "should show shared_expense" do
    get :show, id: @shared_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shared_expense
    assert_response :success
  end

  test "should update shared_expense" do
    patch :update, id: @shared_expense, shared_expense: { amount: @shared_expense.amount, duedate: @shared_expense.duedate, parties: @shared_expense.parties }
    assert_redirected_to shared_expense_path(assigns(:shared_expense))
  end

  test "should destroy shared_expense" do
    assert_difference('SharedExpense.count', -1) do
      delete :destroy, id: @shared_expense
    end

    assert_redirected_to shared_expenses_path
  end
end
