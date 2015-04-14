# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  category_name :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @category = Category.new(category_name: "History")
  end

  test "category attributes should be valid" do
    assert @category.valid?
  end

  test "Category name should be present" do
    @category.category_name = "     "
    assert_not @category.valid?
  end

  test "Category name should not be too long and need to be less than equal to the 30 character" do
    @category.category_name = "a" * 31
    assert_not @category.valid?
  end
end
