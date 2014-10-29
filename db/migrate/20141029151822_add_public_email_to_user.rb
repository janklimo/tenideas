class AddPublicEmailToUser < ActiveRecord::Migration
  def change
  	add_column :users, :public_email, :boolean
  end
end
