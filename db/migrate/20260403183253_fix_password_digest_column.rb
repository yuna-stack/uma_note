class FixPasswordDigestColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :password_dejest, :password_digest
  end
end