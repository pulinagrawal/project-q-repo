class AddProfileRefToQuizzes < ActiveRecord::Migration
  def change
    add_reference :quizzes, :profile, index: true
    add_foreign_key :quizzes, :profiles
  end
end
