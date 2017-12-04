class AddExtraFiledsToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :string
    add_column :users, :description, :string
  end
end
