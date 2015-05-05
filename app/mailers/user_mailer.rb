class UserMailer < ApplicationMailer
        default from: 'quizzeeq@gmail.com'
        def welcome_email(profile)
                @profile=profile
            begin
                mail(to: @profile.email, subject: 'Welcome to Quizzee!')
            rescue 
                    puts 'email was not sent'
            end
        end

        def reset_email(profile)
                @profile=profile
                mail(to: @profile.email, subject: 'Password Reset for Quizzee')
        end
end
