class CreateSpecialityHunters < ActiveRecord::Migration[6.1]
  def change
    create_table :speciality_hunters do |t|
      t.references :speciality, null: false, foreign_key: true
      t.references :hunter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
