class CreateAnnouncementPriorities < ActiveRecord::Migration[5.1]
  def change
    create_table :announcement_priorities do |t|
      t.text :announcement_priority

      t.timestamps
    end
  end
end
