class AddQuestion5ToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :question5, :integer
  end
end
