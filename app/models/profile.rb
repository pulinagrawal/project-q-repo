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
	
	has_secure_password
    has_many :quizzes


    validates :password, length: { minimum: 6 }, allow_nil: true
	before_save { |profile| profile.email = email.downcase }
    before_save :create_remember_token

 private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
