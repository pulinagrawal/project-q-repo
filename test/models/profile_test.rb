# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  first_name    :string
#  last_name     :string
#  birthday      :date
#  password      :string
#  email         :string
#  reward_amount :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  def setup
    @profile = Profile.new(first_name: 'Russel', last_name: 'Peter', birthday: Date.new(1989,1,1), 
    	password: "password", email: "RPeter@memphis.edu", reward_amount: 0)
  end

  test "profile attributes should be valid" do
    assert @profile.valid?
  end

  test "first name should be present" do
    @profile.first_name = "     "
    assert_not @profile.valid?
  end

  test "first name should not be too long and need to be less than equal to the 50 character" do
    @profile.first_name = "a" * 51
    assert_not @profile.valid?
  end

    test "last name should be present" do
    @profile.last_name = "     "
    assert_not @profile.valid?
  end

  test "last name should not be too long and need to be less than equal to the 50 character" do
    @profile.last_name = "a" * 51
    assert_not @profile.valid?
  end

  test "birthday must be present" do
    @profile.birthday=" "       
    assert_not @profile.valid?
  end

  test "birthday must be in between Jan 1,1890 and current date" do
   	@profile.birthday=Date.new(1777,1,1)       
    assert_not @profile.valid?
  end

   test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @profile.email = valid_address
      assert @profile.valid?, "#{valid_address.inspect} should be valid"
    end
  end

    test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @profile.email = invalid_address
      assert_not @profile.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

   test "email should not be too long and need to be less than equal to the 255 character" do
    @profile.email = "a" * 256
    assert_not @profile.valid?
  end

   test "email should be present" do
    @profile.email = "     "
    assert_not @profile.valid?
  end

  test "Reward amount should not be negative " do
    @profile.reward_amount = -1
    assert_not @profile.valid?
  end

end
