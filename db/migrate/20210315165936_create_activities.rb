class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :name
      t.text :description
      t.date :date
      t.float :price
      t.integer :rating
      t.boolean :done
      t.string :address

      t.timestamps
    end
  end
end
