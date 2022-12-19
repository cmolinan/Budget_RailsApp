class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.float :amount, default: 0.0

      t.timestamps
    end
  end
end
