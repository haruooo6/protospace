class Picture < ActiveRecord::Base
  belongs_to :prototype
  accepts_nested_attributes_for :prototype
  mount_uploader :picture, PicutureUploader
  enum picture: [:main, :sub1, :sub2, :sub3]
end
