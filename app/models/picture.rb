class Picture < ActiveRecord::Base
  mount_uploader :picture, PicutureUploader
  enum picture: [:main, :sub1, :sub2, :sub3]
end
