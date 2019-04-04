class AddAttachment < ActiveRecord::Migration[5.2]
  def up
    add_attachment :catagories, :image
    add_attachment :plans, :image
  end

  def down
    remove_attachment :catagories, :image
    remove_attachment :plans, :image
  end
end
