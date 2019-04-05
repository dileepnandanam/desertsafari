class AddAttachmentToImage < ActiveRecord::Migration[5.2]
  def up
  	add_attachment :images, :file
  end

  def down
  	remove_attachment :images, :file
  end
end
