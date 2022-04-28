class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :username, :string, limit: 20
    
  end
end
