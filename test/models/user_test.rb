require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'example', email: 'example@example.com')
  end

  test 'example user should be valid' do
    assert @user.valid?
  end

  test 'name should not be blank' do
    @user.name = '     '
    assert_not @user.valid?
  end

  test 'email should not be blank' do
    @user.email = '     '
    assert_not @user.valid?
  end

  test 'name should not be longer than 50 char' do
    @user.name = 'f' * 51
    assert_not @user.valid?
  end

  test 'email should not be longer than 50 char' do
    @user.email = 'f' * 100 + '@example.com'
    assert_not @user.valid?
  end

  test 'email validation should accept valid addresses' do
    @user.email = 'foo@example.com'
    assert @user.valid?
  end

  test 'email validation should not accept invalid addresses' do
    @user.email = 'foo@example'
    assert_not @user.valid?
  end

  test 'email addresses should be unique' do
    @dup_user = @user.dup
    @user.save
    assert_not @dup_user.valid?
  end
end
