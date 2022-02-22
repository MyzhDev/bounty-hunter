class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.float :rating
      t.boolean :status
      t.text :description
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.references :hunter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
