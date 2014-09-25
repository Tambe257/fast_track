class AddAttachmentImage2ToTriggers < ActiveRecord::Migration
  def self.up
    change_table :triggers do |t|
      t.attachment :image2
    end
  end

  def self.down
    drop_attached_file :triggers, :image2
  end
end
