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
#

class Question < ActiveRecord::Base
	belongs_to :quiz
	belongs_to :category
end
