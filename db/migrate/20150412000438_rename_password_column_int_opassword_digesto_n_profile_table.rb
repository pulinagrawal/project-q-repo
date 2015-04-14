class RenamePasswordColumnIntOpasswordDigestoNProfileTable < ActiveRecord::Migration
  def change

  rename_column :profiles, :password, :password_digest
  end
end
