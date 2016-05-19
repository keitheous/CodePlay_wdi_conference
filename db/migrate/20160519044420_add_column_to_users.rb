class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :desc, :text
    add_column :users, :img, :text
  end
end
