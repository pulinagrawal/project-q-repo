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

    helper_method :ranking
    helper_method :showFewQuizzes
    helper_method :returnPoint

    def ranking
        sql = "SELECT COUNT(*) AS [rank] FROM profiles "+
        "WHERE reward_amount >= "+
        "(SELECT reward_amount FROM profiles WHERE id = #{@profile.id})"
             ActiveRecord::Base.connection.execute(sql).each do |user| 
                return user[0] 
            end 
    end

    def returnPoint

        sql ="SELECT reward_amount FROM profiles WHERE id = #{@profile.id}"
            ActiveRecord::Base.connection.execute(sql).each do |user| 
                return user[0] 
            end 

    end 
  
end


