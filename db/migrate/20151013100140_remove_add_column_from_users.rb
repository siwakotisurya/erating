class RemoveAddColumnFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :avatar, :string
  end
end
