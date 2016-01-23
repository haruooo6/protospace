class Picture < ActiveRecord::Base
  belongs_to :prototype
  #accepts_nested_attributes_for :prototype, allow_destroy: true
  mount_uploader :thumbnail, PicutureUploader
  enum status: %i(main sub)

end
