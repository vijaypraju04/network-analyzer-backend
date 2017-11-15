class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
