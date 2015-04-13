# == Schema Information
#
# Table name: quizzes
#
#  id         :integer          not null, primary key
#  end_date   :date
#  start_date :date
#  correct1   :boolean
#  correct2   :boolean
#  correct3   :boolean
#  correct4   :boolean
#  correct5   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  profile_id :integer
#  question1  :integer
#  question2  :integer
#  question3  :integer
#  question4  :integer
#  question5  :integer
#  username   :string
#

#

require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @quiz = Quiz.new(start_date: Date.new(2015,1,1),
    end_date: Date.new(2015,1,1), correct1: true, correct2: false,
    correct3: true, correct4: nil, correct5: nil)
  end

  test "Quiz attributes should be valid" do
    assert @quiz.valid?
  end

  test "Start date must be in between Jan 1,1890 and current date" do
   	@quiz.start_date=Date.new(1777,1,1)
    assert_not @quiz.valid?
  end

  test "correct1 value should be True, False, or nil" do
    @quiz.correct1 = true
    assert @quiz.valid?
  end

  test "correct2 value should be True, False, or nil" do
    @quiz.correct2 = false
    assert @quiz.valid?
  end

  test "correct3 value should be True, False, or nil" do
    @quiz.correct3 = nil
    assert @quiz.valid?
  end

  test "correct4 value should be True, False, or nil" do
    @quiz.correct4 = true
    assert @quiz.valid?
  end

  test "correct5 value should be True, False, or nil" do
    @quiz.correct5 = false
    assert @quiz.valid?
  end
end
