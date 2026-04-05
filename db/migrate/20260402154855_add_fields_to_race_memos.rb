class AddFieldsToRaceMemos < ActiveRecord::Migration[7.2]
  def change
    add_column :race_memos, :horse_age, :integer
    add_column :race_memos, :track_condition, :string
    add_column :race_memos, :main_horse, :string
    add_column :race_memos, :second_horse, :string
    add_column :race_memos, :dark_horse, :string
  end
end
