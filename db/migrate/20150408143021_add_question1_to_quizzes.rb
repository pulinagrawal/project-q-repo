class AddQuestion1ToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :question1, :integer
  end
end
