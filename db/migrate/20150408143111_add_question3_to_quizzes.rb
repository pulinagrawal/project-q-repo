class AddQuestion3ToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :question3, :integer
  end
end
