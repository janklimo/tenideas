class AlterIdeas < ActiveRecord::Migration
  def change
  	rename_column("ideas", "text", "idea1")
  	add_column("ideas", "idea2", :string, :limit => 120)
  	add_column("ideas", "idea3", :string, :limit => 120)
  	add_column("ideas", "idea4", :string, :limit => 120)
  	add_column("ideas", "idea5", :string, :limit => 120)
  	add_column("ideas", "idea6", :string, :limit => 120)
  	add_column("ideas", "idea7", :string, :limit => 120)
  	add_column("ideas", "idea8", :string, :limit => 120)
  	add_column("ideas", "idea9", :string, :limit => 120)
  	add_column("ideas", "idea10", :string, :limit => 120)
  end
end
