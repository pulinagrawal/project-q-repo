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

	#attr_accessor :password
	has_secure_password(validations: false)
		#has_secure_password
#####################################
#before_create :hash_the_password
# after_create :nil_the_password
######################################
#attr_accessor :email, :password, :password_confirmation


    has_many :quizzes

    validates :email, :uniqueness => true
    validates :password, length: { minimum: 6 }, allow_nil: true
	before_save { |profile| profile.email = email.downcase }
    before_save :create_remember_token



 private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end


    ############################################
    # def hash_the_password
    #		self.hashed_password = Profile.hash_password(self.password)
 	# end

	# def nil_the_password 
	#    @password = nil
	# end


	#def self.hash_password(password)
	#    Digest::SHA1.hexdigest(password)
	#  end
    ###########################################


    ###########################################



end
