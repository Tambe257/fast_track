class AddAttachmentImageToHints < ActiveRecord::Migration
  def self.up
    change_table :hints do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :hints, :image
  end
end
