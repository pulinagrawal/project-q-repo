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
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
