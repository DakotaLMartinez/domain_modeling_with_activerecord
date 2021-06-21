# Tables
- User
  - username (string)
```rb
class User < ActiveRecord::Base
  has_many :posts
  has_many :likes
  has_many :comments
  # ? has_many :liked_posts, through: :likes, source: :likeable
  has_many :commented_posts, through: :comments, source: :post
end
```
- Post
  - title (string)
  - content (text)
  - user_id (integer)
```rb
class Post < ActiveRecord::Base
  belongs_to :user
  # has_many :user_tags, as: :taggable
  has_many :likes, as: :likeable
  has_many :comments, as: :commentable
end
```
- Like
  - user_id (integer)
  - likeable_id (integer)
  - likeable_type (string)
```rb
class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :likeable, polymorphic: true
end
```
- Comment
  - content (text)
  - user_id (integer)
  - commentable_id (integer)
  - commentable_type (string)
```rb
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
end
```
- Tag
  - name (string)
- PostTag
  - post_id (integer)
  - tag_id (integer)
<!-- - UserTag
 - user_id (integer)
 - taggable_id (integer)
 - taggable_type (string)
```rb
class UserTag < ActiveRecord::Base
  belongs_to :user
  belongs_to :taggable, polymorphic: true
end
``` -->