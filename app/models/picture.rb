class Picture < ActiveRecord::Base

  enum picture: [:main, :sub1, :sub2, :sub3]
end
