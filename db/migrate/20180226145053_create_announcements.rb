class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.string :announcement
      t.text :details
      t.string :priority
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
