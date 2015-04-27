class StaticPagesController < ApplicationController
    def landing
            quizzes_index_requirements
    end

    def example
    end

    def index
            if current_profile
                @profile = Profile.new
            else
                landing
            end
    end
end
