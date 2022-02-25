class ChangeDataTypeForStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :contracts, :status, :string
  end
end
