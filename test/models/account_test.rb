require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  def setup
    @user = Account.new(
      email: 'test@test.test',
      username: 'test',
      description: 'test',
      password: 'password',
      password_confirmation: 'password'
    )
  end

  test 'account should be valid' do
    assert @user.valid?
  end

  test 'account should be unique' do
    @user.save
    @user2 = Account.new(
      email: 'test@test.test',
      username: 'test',
      description: 'test',
      password: 'password',
      password_confirmation: 'password'
    )
    assert_not @user2.valid?
  end

  test 'username should not be too long' do
    @user.username = 'a' * 26
    assert_not @user.valid?
  end

  test 'username should not be too short' do
    @user.username = 'a'
    assert_not @user.valid?
  end
end
