class AddColumnstoUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :String
    add_column :users, :phone, :string
    add_column :users, :zipcode, :string
    add_column :users, :agent, :boolean
  end
end
