require 'test_helper'

class CasaAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casa_account = casa_accounts(:one)
  end

  test 'should get index' do
    get casa_accounts_url, as: :json
    assert_response :success
  end

  test 'should create casa_account' do
    assert_difference('CasaAccount.count') do
      post casa_accounts_url, params: { casa_account: { account_no: @casa_account.account_no, available_balance: @casa_account.available_balance, balance: @casa_account.balance, currency: @casa_account.currency, product_code: @casa_account.product_code, product_description: @casa_account.product_description } }, as: :json
    end

    assert_response 201
  end

  test 'should show casa_account' do
    get casa_account_url(@casa_account), as: :json
    assert_response :success
  end

  test 'should update casa_account' do
    patch casa_account_url(@casa_account), params: { casa_account: { account_no: @casa_account.account_no, available_balance: @casa_account.available_balance, balance: @casa_account.balance, currency: @casa_account.currency, product_code: @casa_account.product_code, product_description: @casa_account.product_description } }, as: :json
    assert_response 200
  end

  test 'should destroy casa_account' do
    assert_difference('CasaAccount.count', -1) do
      delete casa_account_url(@casa_account), as: :json
    end

    assert_response 204
  end
end
