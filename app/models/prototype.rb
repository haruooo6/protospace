class Prototype < ActiveRecord::Base
  belongs_to :user
  belongs_to :tag
  has_many :comments
  has_many :tags, through: :prototype_tag
  has_many :picutures
  has_many :likes
  act_as_taggable_on :prototype
end
