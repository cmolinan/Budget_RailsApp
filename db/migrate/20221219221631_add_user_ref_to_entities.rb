class AddUserRefToEntities < ActiveRecord::Migration[7.0]
  def change
    add_reference :entities, :user, null: false, foreign_key: true
  end
end
