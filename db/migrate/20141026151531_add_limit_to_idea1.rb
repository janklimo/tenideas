class AddLimitToIdea1 < ActiveRecord::Migration
  def change
  	change_column("ideas", "idea1", :string, :limit => 120)
  end
end
