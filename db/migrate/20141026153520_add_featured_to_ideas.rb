class AddFeaturedToIdeas < ActiveRecord::Migration
  def change
  	add_column :ideas, :featued, :boolean
  end
end
