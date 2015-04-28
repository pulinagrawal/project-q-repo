class UserMailer < ApplicationMailer
        def welcome_email(profile)
                @profile=profile
                mail(to: @profile.email, subject: 'Welcome to Quizzee!')
        end
end
