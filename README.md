== README

DB設計書

## prototype
  id  
  title(string)  
  catchcopy(string)  
  concept(text)  
  user_id  

### アソシエーション
  belongs_to :user  
  belongs_to :tag  
  has_many :comments  
  has_many :pictures  
  has_many :likes  


## comment
  id  
  comment(text)  
  prototype_id  
  user_id  

### アソシエーション
  belongs_to :prototype  
  belongs_to :user  


## user
  id  
  nickname(string)  
  profile(text)  
  works(text)  
  group(string)  
  avatar(string)  
  email,passwordなど(deviseで生成されるカラム)  

### アソシエーション
  has_many :comments  
  has_many :prototypes  
  has_many :likes  


## picture
  id  
  thumbnail(string)  
  type(integer)  
  prototype_id  
  enum picuture: [:main, :sub]  


### アソシエーション
  belongs_to :prototype  

## like
  id  
  like_count(integer)  

### アソシエーション
  belongs_to :prototype, :counter_cache: like_count  
  belongs_to :user  
  