class Pin < ActiveRecord::Base
   belongs_to :user
   mount_uploader :photo, PhotoUploader

   validates :link, presence: true
   validates :title, presence: true
   validates :photo, presence: true

end
