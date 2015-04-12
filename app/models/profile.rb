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

class Profile < ActiveRecord::Base
	has_many :quizzes
	validates :first_name, presence:  true, length: { maximum: 50 }
	validates :last_name, presence:  true, length: { maximum: 50 }
	validates_inclusion_of :birthday, :in => Date.new(1890,1,1)..Date.current, presence:true
	validates :reward_amount, allow_blank: true, inclusion:{in: 0..10}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	validates :password, length: { in: 8..15 }
    
end
