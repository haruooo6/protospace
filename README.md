== README

DB設計書

## protospace
  id
  title
  image_url
  catchcopy
  concept
  like

### アソシエーション
  belongs_to :user
  belongs_to :tag
  has_many :comments
  has_many :tags, through: :protospace_tag


## comment
  id
  comment
  protospace_id
  user_id

### アソシエーション
  belongs_to :comment
  belongs_to :protospace

## user
  id
  nickname
  profile
  works
  avatar(perperclip)
  email,passwordなど(devise)

### アソシエーション
  has_many :reviews
  has_many :protospaces

## tag
  id
  tag_name

### アソシエーション
  has_many :protospaces, through: :protospace_tag

## protospace_tag
  id
  tag_id
  protospace_id

###アソシエーション
  belongs_to :protospace
  belongs_to :tag