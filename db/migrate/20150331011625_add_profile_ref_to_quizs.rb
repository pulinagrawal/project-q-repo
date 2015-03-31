class AddProfileRefToQuizs < ActiveRecord::Migration
  def change
    add_reference :quizs, :profile, index: true
    add_foreign_key :quizs, :profiles
  end
end
