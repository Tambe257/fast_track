class AddAttachmentImage2ToHints < ActiveRecord::Migration
  def self.up
    change_table :hints do |t|
      t.attachment :image2
    end
  end

  def self.down
    drop_attached_file :hints, :image2
  end
end
