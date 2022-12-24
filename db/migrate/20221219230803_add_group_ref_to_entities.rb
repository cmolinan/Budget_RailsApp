class AddGroupRefToEntities < ActiveRecord::Migration[7.0]
  def change
    add_reference :entities, :group, null: false, foreign_key: true
  end
end
