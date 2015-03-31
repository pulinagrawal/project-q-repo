class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :level
      t.string :correct_answer
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :question

      t.timestamps null: false
    end
  end
end
