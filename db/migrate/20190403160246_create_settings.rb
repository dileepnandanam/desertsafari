class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :identifier
      t.text :value

      t.timestamps
    end
  end
end
