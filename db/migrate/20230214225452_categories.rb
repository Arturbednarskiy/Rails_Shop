class Categories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.text :name
      t.integer :position
      t.timestamps
    end
  end
end
