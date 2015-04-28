class StaticPagesController < ApplicationController
    def landing
            quizzes_index_requirements
    end

    def example
    end

    def index
            if current_profile
                landing
            else
                @profile = Profile.new
            end
    end
end
