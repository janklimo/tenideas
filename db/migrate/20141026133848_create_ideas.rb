class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.references :user, index: true
      t.integer :recipient
      t.string :text

      t.timestamps
    end
  end
end
