require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @account = Account.create(
      email: 'test@test.test',
      username: 'test',
      description: 'test',
      password: 'password',
      password_confirmation: 'password'
    )
    sign_in @account
  end

  test 'should get index' do
    get dashboard_path
    assert_response :success
  end


  # test 'should create account' do
  #   assert_difference('Account.count') do
  #     post accounts_url, params: { account: {} }
  #   end

  #   assert_redirected_to account_url(Account.last)
  # end

  # test 'should show account' do
  #   get profile_path(@account)
  #   assert_response :success
  # end

  test 'should get edit' do
    get edit_account_registration_path(@account)
    assert_response :success
  end

  # test 'should update account' do
  #   patch account_url(@account), params: { account: {} }
  #   assert_redirected_to account_url(@account)
  # end

  # test 'should destroy account' do
  #   assert_difference('Account.count', -1) do
  #     delete account_url(@account)
  #   end

  #   assert_redirected_to accounts_url
  # end
end
