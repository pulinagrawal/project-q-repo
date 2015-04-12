class AddUserToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :username, :string
  end
end
