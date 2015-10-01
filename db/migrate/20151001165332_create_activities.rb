class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :name
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
