class AddIndexToIdeasOnRecipient < ActiveRecord::Migration
  def change
  	add_index :ideas, :recipient, unique: false
  end

  
end
