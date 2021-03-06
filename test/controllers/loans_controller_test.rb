require "test_helper"

class LoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get loans_url, as: :json
    assert_response :success
  end

  test "should create loan" do
    assert_difference("Loan.count") do
      post loans_url, params: { loan: { duration: @loan.duration, loaned_book: @loan.loaned_book, loaned_to: @loan.loaned_to, returned: @loan.returned } }, as: :json
    end

    assert_response :created
  end

  test "should show loan" do
    get loan_url(@loan), as: :json
    assert_response :success
  end

  test "should update loan" do
    patch loan_url(@loan), params: { loan: { duration: @loan.duration, loaned_book: @loan.loaned_book, loaned_to: @loan.loaned_to, returned: @loan.returned } }, as: :json
    assert_response :success
  end

  test "should destroy loan" do
    assert_difference("Loan.count", -1) do
      delete loan_url(@loan), as: :json
    end

    assert_response :no_content
  end
end
