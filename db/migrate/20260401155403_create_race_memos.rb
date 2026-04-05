class CreateRaceMemos < ActiveRecord::Migration[7.2]
  def change
    create_table :race_memos do |t|
      t.string :race_name
      t.date :held_on
      t.text :prediction_memo
      t.text :result_memo

      t.timestamps
    end
  end
end
