class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :twitter_handle, :string
  	add_column :users, :company, :string
  	add_column :users, :url, :string
  	add_column :users, :problem_definition, :string
  end
end
