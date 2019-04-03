class CreateCatagories < ActiveRecord::Migration[5.2]
  def change
    create_table :catagories do |t|
      t.text :description
      t.string :name
      t.string :price
      t.string :short_description

      t.timestamps
    end
  end
end
