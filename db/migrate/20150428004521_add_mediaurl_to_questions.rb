class AddMediaurlToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :mediaurl, :string
  end
end
