class FixProblemDefinitionLength < ActiveRecord::Migration
  def change
  	change_column("users", "problem_definition", :text, :limit => nil)
  end
end
