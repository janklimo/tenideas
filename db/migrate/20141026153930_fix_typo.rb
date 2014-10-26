class FixTypo < ActiveRecord::Migration
  def change
  	rename_column(:ideas, :featued, :featured)
  end
end
