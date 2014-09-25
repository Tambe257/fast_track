class AddAttachmentImageToTriggers < ActiveRecord::Migration
  def self.up
    change_table :triggers do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :triggers, :image
  end
end
