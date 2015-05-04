class UserMailer < ApplicationMailer
        default from: 'quizzeeq@gmail.com'
        def welcome_email(profile)
                @profile=profile
                mail(to: @profile.email, subject: 'Welcome to Quizzee!')
        end
end
