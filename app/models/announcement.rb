class Announcement < ActiveRecord::Base
   validates :announcement, presence:true, length: {min:10, max:50}
   validates :details, presence:true, length: {min:10, max:300}
   validates :priority, presence:true , length: {min:3, max:6}
end