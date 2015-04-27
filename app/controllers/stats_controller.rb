class StatsController < ApplicationController
    before_action :correct_user, only: [:show]

    def show
        # Gets a lot of what we need
        quizzes_index_requirements

        # TODO: generate category stats and by age stats

        # Add category stats on the fly
        @categories.each do |cat|
            #TODO: actual stats
            class << cat
                attr_accessor :quiz_count
            end
            cat.quiz_count = 42
        end
    end

    def correct_user
        @profile=Profile.find(session[:profile_id])
        redirect_to(root_url) unless current_profile==@profile
    end
end
