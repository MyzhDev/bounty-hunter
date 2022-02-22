class CreateHunters < ActiveRecord::Migration[6.1]
  def change
    create_table :hunters do |t|
      t.string :name
      t.integer :price
      t.string :catchphrase
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
