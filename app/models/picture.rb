class Picture < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :thumbnail, PicutureUploader
  enum status: %i(main sub)
end
