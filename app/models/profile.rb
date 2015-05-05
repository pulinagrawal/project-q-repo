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

    has_secure_password :validations => false

    validates :email, :uniqueness => true
    before_save { |profile| profile.email = email.downcase }
    before_save :create_remember_token

    validates :first_name, presence:  true, length: { maximum: 50 }
    validates :last_name, presence:  true, length: { maximum: 50 }
    validates_inclusion_of :birthday, :in => Date.new(1890,1,1)..Date.current, presence:true
    validates :reward_amount, allow_blank: true, :numericality => { :greater_than_or_equal_to => 0}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


before_create :create_activation_digest                    


private

    def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
    end


    ############################################
    # def hash_the_password
    #       self.hashed_password = Profile.hash_password(self.password)
    # end

    # def nil_the_password
    #    @password = nil
    # end


    #def self.hash_password(password)
    #    Digest::SHA1.hexdigest(password)
    #  end
    ###########################################

    def create_activation_digest
        self.activation_token  = Profile.new_token
        self.activation_digest = Profile.digest(activation_token)
    end
    ###########################################

    

end
