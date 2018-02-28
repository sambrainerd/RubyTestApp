class Announcement < ActiveRecord::Base
   validates :announcement, presence:true, length: {minimum:10, maximum:100}
   validates :details, presence:true, length: {minimum:10, maximum:500}
   validates :priority, presence:true, length: {minimum:3, maximum:6}
end