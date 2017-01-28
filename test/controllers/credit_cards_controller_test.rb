require 'test_helper'

class CreditCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credit_card = credit_cards(:one)
  end

  test 'should get index' do
    get credit_cards_url, as: :json
    assert_response :success
  end

  test 'should create credit_card' do
    assert_difference('CreditCard.count') do
      post credit_cards_url, params: { credit_card: { account_no: @credit_card.account_no, avail_bal: @credit_card.avail_bal, bal: @credit_card.bal, credit_limit: @credit_card.credit_limit, due_date: @credit_card.due_date, last_stmt_bal: @credit_card.last_stmt_bal } }, as: :json
    end

    assert_response 201
  end

  test 'should show credit_card' do
    get credit_card_url(@credit_card), as: :json
    assert_response :success
  end

  test 'should update credit_card' do
    patch credit_card_url(@credit_card), params: { credit_card: { account_no: @credit_card.account_no, avail_bal: @credit_card.avail_bal, bal: @credit_card.bal, credit_limit: @credit_card.credit_limit, due_date: @credit_card.due_date, last_stmt_bal: @credit_card.last_stmt_bal } }, as: :json
    assert_response 200
  end

  test 'should destroy credit_card' do
    assert_difference('CreditCard.count', -1) do
      delete credit_card_url(@credit_card), as: :json
    end

    assert_response 204
  end
end
