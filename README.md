== README

DB設計書

## prototype
  id  
  title(string)  
  catchcopy(string)  
  concept(text)  
  user_id(integer)  
  tag_id(integer)  

### アソシエーション
  belongs_to :user  
  belongs_to :tag  
  has_many :comments  
  has_many :tags, through: :prototype_tag  
  has_many :pictures  
  has_many :likes  

## comment
  id  
  comment(text)  
  prototype_id(integer)  
  user_id(integer)  

### アソシエーション
  belongs_to :prototype  
  belongs_to :user

## user
  id  
  nickname(string)  
  profile(text)  
  works(text)  
  avatar(carrierwaveで生成されるカラム)  
  email,passwordなど(deviseで生成されるカラム)  

### アソシエーション
  has_many :comments  
  has_many :prototypes  
  has_many :likes  

## tag
  id  
  tag_name(string)  

### アソシエーション
  has_many :prototypes, through: :prototype_tag　

## prototype_tag
  id  
  tag_id(integer)  
  prototype_id(integer)  

### アソシエーション
  belongs_to :prototype  
  belongs_to :tag  

## picture
  id  
  prototype_id(integer)  
  enum picuture: [:main, :sub1, :sub2, :sub3]  

### アソシエーション
  belongs_to :prototype  

## like
  id  
  like_count(integer)  
  prototype_id(integer)  

### アソシエーション
  belongs_to :prototype, :counter_cache: like_count  
  belongs_to :user  
  