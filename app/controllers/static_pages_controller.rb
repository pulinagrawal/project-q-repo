class StaticPagesController < ApplicationController
    def landing
        quizzesController= QuizzesController.new()
        quizzesController.index()
        @categories=quizzesController.categories
    end

    def example
    end

    def index
        @profile = Profile.new
    end
end
