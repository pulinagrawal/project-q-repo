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

class Question < ActiveRecord::Base
	belongs_to :quiz
	belongs_to :category

	validates :level, presence:  true, inclusion:{in: 1..3}
	validates :correct_answer, presence:  true, length: { maximum: 10000 }
    validates :option1, presence: true, length: { maximum: 10000 }
    validates :option2, presence: true, length: { maximum: 10000 }
    validates :option3, presence: true, length: { maximum: 10000 }
    validates :option4, presence: true, length: { maximum: 10000 }
    validates :question, presence: true, length: { maximum: 10000 }
end

