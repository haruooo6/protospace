class Picture < ActiveRecord::Base
  belongs_to :prototype
  accepts_nested_attributes_for :prototype
  mount_uploader :thumbnail, PicutureUploader
  enum type: %i(main, sub)
end
