class AddQuestion4ToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :question4, :integer
  end
end
