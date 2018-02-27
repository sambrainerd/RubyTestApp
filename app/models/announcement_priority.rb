class AnnouncementPriority < ApplicationRecord
  validates :announcement_priority, presence:true, length: {minimum:3, maximum:6}
end
