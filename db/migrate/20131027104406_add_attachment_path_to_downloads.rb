class AddAttachmentPathToDownloads < ActiveRecord::Migration
  def self.up
    change_table :downloads do |t|
      t.attachment :path
    end
  end

  def self.down
    drop_attached_file :downloads, :path
  end
end
