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
#

require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
