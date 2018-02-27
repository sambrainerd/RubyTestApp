class Announcement < ActiveRecord::Base
   validates :announcement, presence:true, length: {minimum:10, maximum:50}
   validates :details, presence:true, length: {minimum:10, maximum:300}
   validates :priority, presence:true, length: {minimum:3, maximum:6}
end