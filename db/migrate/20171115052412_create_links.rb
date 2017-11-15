class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.integer :user_id
      t.integer :target_id
      t.string :kind

      t.timestamps
    end
  end
end
