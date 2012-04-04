class AddCurrentLoginAtToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :current_login_at, :datetime
  end

  def self.down
    remove_column :users, :current_login_at
  end
end
