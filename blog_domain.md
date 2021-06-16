# Tables
- User
  - username (string)
```rb
class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  # has_many :likes
  # has_many :liked_posts, through: :likes, source: :likeable
  # has_many :commented_posts, through: :comments, source: :post
end
```

- Post
  - title (string)
  - content (text)
  - user_id (integer)
```rb
class Post < ActiveRecord::Base
  belongs_to :user
  # has_many :likes, as: :likeable
  has_many :comments
  # has_many :post_tags
  # has_many :tags, through: :post_tags
end
```
- Comment
  - content (text)
  - post_id (integer)
  - user_id (integer)
```rb
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  # has_many :likes, as: :likeable
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

- PostTag
  - post_id (integer)
  - tag_id (integer)
```rb
# class PostTag < ActiveRecord::Base
#   belongs_to :post
#   belongs_to :tag
# end
```
- Tag
  - name
```rb
class Tag < ActiveRecord::Base
  # has_many :post_tags
  # has_many :posts, through: :post_tags
end
```

