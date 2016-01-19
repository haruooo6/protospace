class Picture < ActiveRecord::Base
  belongs_to :prototype
  accepts_nested_attributes_for :prototype
  mount_uploader :thumbnail, PicutureUploader
  enum status: %i(main sub)

end
