class CreateSavedRoutes < ActiveRecord::Migration
  def change
    create_table :saved_routes do |t|
      t.string :start
      t.string :end
      t.text :route
      t.integer :fare

      t.timestamps null: false
    end
  end
end
