class User < ActiveRecord::Base
  has_many :comments
  has_many :prototypes
  has_many :likes
end
