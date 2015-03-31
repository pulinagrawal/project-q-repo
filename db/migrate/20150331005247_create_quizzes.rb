class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.date :end_date
      t.date :start_date
      t.boolean :correct1
      t.boolean :correct2
      t.boolean :correct3
      t.boolean :correct4
      t.boolean :correct5

      t.timestamps null: false
    end
  end
end
