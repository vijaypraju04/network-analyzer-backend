class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :photo
      t.text :contact

      t.timestamps
    end
  end
end
