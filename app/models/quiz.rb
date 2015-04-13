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
#  user       :integer
#  username   :string
#

class Quiz < ActiveRecord::Base
	belongs_to :profile
	has_many :questions

    validates_inclusion_of :end_date, :in => Date.new(1890,1,1)..Date.current
    validates_inclusion_of :start_date, :in => Date.new(1890,1,1)..Date.current, presence:true
end

