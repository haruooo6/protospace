class Picture < ActiveRecord::Base
  belongs_to :prototype
  accepts_nested_attributes_for :prototype
  mount_uploader :main, PicutureUploader
  mount_uploader :sub1, PicutureUploader
  mount_uploader :sub2, PicutureUploader
  mount_uploader :sub3, PicutureUploader
  enum picture: [:main, :sub1, :sub2, :sub3]
end
