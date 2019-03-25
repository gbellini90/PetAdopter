class AddOwnerIdBackToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :owner_id, :integer, index:true
  end
end
