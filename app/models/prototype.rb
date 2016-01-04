class Prototype < ActiveRecord::Base
  belongs_to :user
  belongs_to :tag
  has_many :comments
  has_many :pictures
  has_many :likes
  accepts_nested_attributes_for :pictures
  # act_as_taggable_on :prototype
end

