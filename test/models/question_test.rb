# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  level          :integer
#  correct_answer :string
#  option1        :string
#  option2        :string
#  option3        :string
#  option4        :string
#  question       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :integer
#  quiz_id        :integer
#  category       :string

#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @question = Question.new(level: 1, correct_answer: "George Washington", option1: "John Adams", option2: "George Washington", option3: "Andrew Jackson", option4: "Thomas Jefferson", question: "Who was the first President of the United States?")
  end

  test "level should have a minimum length of 1 character" do
    @question.level = 0
    assert_not @question.valid?
  end

  test "level should have a maximum length of 3 character" do
    @question.level =  4
    assert_not @question.valid?
  end

  test "question should be present" do
    @question.question = "     "
    assert_not @question.valid?
  end

  test "question should not be too long and need to be less than equal to the 10000 character" do
    @question.question = "a" * 11111
    assert_not @question.valid?
  end

  test "Correct answer should be present" do
    @question.correct_answer = "     "
    assert_not @question.valid?
  end

  test "Correct answer should not be too long and need to be less than equal to the 10000 character" do
    @question.correct_answer = "a" * 11111
    assert_not @question.valid?
  end

  test "Option1 should be present" do
    @question.option1 = "     "
    assert_not @question.valid?
  end

  test "option1 should not be too long and need to be less than equal to the 10000 character" do
    @question.option1 = "a" * 11111
    assert_not @question.valid?
  end

  test "Option2 should be present" do
    @question.option2 = "     "
    assert_not @question.valid?
  end

  test "option2 should not be too long and need to be less than equal to the 10000 character" do
    @question.option2 = "a" * 11111
    assert_not @question.valid?
  end

  test "Option3 should be present" do
    @question.option3 = "     "
    assert_not @question.valid?
  end

  test "option3 should not be too long and need to be less than equal to the 10000 character" do
    @question.option3 = "a" * 11111
    assert_not @question.valid?
  end

  test "Option4 should be present" do
    @question.option4 = "     "
    assert_not @question.valid?
  end

  test "option4 should not be too long and need to be less than equal to the 10000 character" do
    @question.option4 = "a" * 11111
    assert_not @question.valid?
  end
end
