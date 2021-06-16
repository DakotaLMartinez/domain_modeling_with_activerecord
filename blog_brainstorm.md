### 1. Describe the App we want to build
A blog application where users can create posts, add comments to them and like or unlike them.
### 2. What features could the application have? 
- Users can create posts 
- Users can comment on posts
- Users can like posts
- Users can like comments
- Users can view a post's comments
- Users can view posts they've created
- Users can view the posts they have liked
- Users can view the comments they have liked
- Users can view posts they've commented on
- Posts can have tags
- We can view posts that share a certain tag


### Thoughts


#### Does likes have to be its own table?
If likes is not a table then how are we keeping track of it? Just a number as an attribute? If it is just a number there's no connection to who liked the post, which would prevent us from building  out a couple of the features above. We also couldn't prevent users from liking a post multiple times. So, probably likes need their own table.

#### Can users like comments?

Comments would need has_many likes, a new model liked_comment, maybe? What if we wanted to have notes in our application and also allow users to comment on those? We'd need a new table for all the different kinds of comments. 

This is a good use case for a polymorphic association. Another example is file uploads.

```rb
# likes table
# t.references :user
# t.references :likeable, polymorphic: true
# (likeable_id: integer, likeable_type: string)

class Like
  belongs_to :user
  belongs_to :likeable, polymorphic: true
end

class Post
  has_many :likes, as: :likeable
end

class Comment 
  has_many :likes, as: :likeable
end
```

We could also do this for comments (can belong both to posts and other comments)

```rb
# Comments
# t.references :user
# t.references :commentable, polymorphic: true
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true
end

class Post < ActiveRecord::Base
  has_many :comments, as: :commentable
end

class Comment < ActiveRecord::Base
  has_many :comments, as: :commentable
end
```

For now, feel free to keep things open and just list things that we could do. We don't have to actually build everything here.

### 3. In the description and list above, what types of *things* have we've mentioned? (make a list below)

- User
- Post
- Like
- Comment
- Tag

The *things* in this list are potential models in our program. For now, let's keep things open, we can decide which things we actually want to build later. Our goal here is to think of as many possible models we might need to support our application. We can pare down the list later on.

### 4. Go through the models two at a time and ask how they're related to one another. Make sure to talk through this from both perspectives (User has many posts, post belongs to user). If you hit many to many between two, think about what the join model should be called and add it.

- User <=> Post 
  - User has many posts 
  - post belongs to author
- User <=> Like
  - User has many likes
  - like belongs to user
- User <=> Comment
  - User has many comments
  - Comment belongs to user
- User <=> Tag
  - none

- Post <=> Like
  - Post has many likes
  - like belongs to post
- Post <=> Comment
  - Post has many comments
  - comment belongs to post
- Post <=> Tag
  - Post has many tags
  - Tag has many posts 
  - !!! We need a Join table for many to many
- Post <=> PostTag
  - Post has many post tags
  - post tag belongs to post
- PostTag <=> Tag
  - PostTag belongs to tag
  - Tag has many post tags
... Easier to think of Post <=> Tag with the 6 macro pattern (2 belongs_to on join -PostTag, 2 has_many post_tags on Post and Tag 2 has_many throughs on each end pointing to other)

- Like <=> Comment
  - none

- Like <=> Tag
  - none

### 5. Go through the models and describe any attributes they'll have (remember to add foreign keys for those models that have a reference to other mdoels)

- A user will have a username
- A post will have a tile and content also a reference to user who created it
- A like will have a reference to the likeable it belongs to and the user that liked it, it'll also have an likeable_type
- A Comment will have content and a reference to the post it's about and the user who made it (assuming not threaded)
- A Tag will have a name
- A PostTag will have a reference to the post and tag it belongs to.



### 6. Revisit the list of features and see if there are additional associations that we missed that could help with the features we listed.

- Users can view the posts they have liked
- Users can view posts they've commented on

### 7. Take a look at our domain model and see how it feels. Could we change anything here? Leave anything out? Is there anything we can wait until later for without causing problems?

Which models should we build first? Which can wait for later?
#### Build First
- User
- Post
- Comment
- Like?
#### For Later
- Like?
- Tag
- PostTag

### 8. Sketch out some examples of model objects (we'll use these to create seeds later)

- User
  - ...
- Post
  - ...
- Like
  - ...
- Comment
  - ...
- Tag
  - ...
- PostTag
  - ...

