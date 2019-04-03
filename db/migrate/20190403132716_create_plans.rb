class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :catagory_id
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
