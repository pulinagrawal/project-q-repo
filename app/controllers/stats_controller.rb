class StatsController < ApplicationController
    before_action :correct_user, only: [:show]
    
    def show
        @categories = Category.all
        @categories.each do |cat| 
            #TODO: actual stats
            class << cat
                attr_accessor :quiz_count
            end
            cat.quiz_count = 42
        end
        
        #TODO: find this as part of the loop for stat gathering
        startd = @profile.birthday + -365
        endd = @profile.birthday + 365
        peer_total = 0.0
        peer_correct = 0.0
        Profile.where("birthday between ? and ?", startd, endd).each do |peer|
            Quiz.where(profile_id: peer.id).each do |pq|
                peer_total += 5.0
                1.upto(5).each do |idx|
                    if pq["correct#{idx}"] then
                        peer_correct += 1.0
                    end
                end
            end
        end
        if peer_total > 0.0
            @peer_percent = peer_correct / peer_total
        else
            @peer_percent = 0
        end
    end
    
    def correct_user
        @profile=Profile.find(session[:profile_id])
        redirect_to(root_url) unless current_profile==@profile
    end
end
