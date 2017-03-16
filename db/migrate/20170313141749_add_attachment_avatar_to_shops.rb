class AddAttachmentAvatarToShops < ActiveRecord::Migration
  def self.up
    change_table :shops do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :shops, :avatar
  end
end
