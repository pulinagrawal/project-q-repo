module ApplicationHelper
end

class OneStat
    attr_accessor :quizzes
    attr_accessor :questions
    attr_accessor :correct

    def initialize
        @quizzes = 0
        @questions = 0
        @correct = 0
    end

    def hit(quiz, quest, correct)
        @quizzes += quiz
        @questions += quest
        @correct += correct
    end

    def quiz_percent(total)
        if total < 1
            return 0.0
        end
        return (Float(@quizzes) / total) * 100.0
    end

    def percent_correct
        if @questions < 1
            return 0.0
        end
        return (Float(@correct) / @questions) * 100.0
    end
end
