class Prototype < ActiveRecord::Base
  belongs_to :user, counter_cache: true
  belongs_to :tag
  has_many :comments
  has_many :pictures, dependent: :destroy
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :pictures, reject_if: :reject_pictures

  validates :title, :catchcopy, :concept, presence: true

  acts_as_taggable_on :labels

  paginates_per 5

  def reject_pictures(attributes)
    attributes['thumbnail'].blank?
  end

  def like_user(user)
    likes.find_by(user_id: user.id)
  end

  def sub_img
    pictures.sub.present?
  end
end
