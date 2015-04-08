class AddQuestion2ToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :question2, :integer
  end
end
