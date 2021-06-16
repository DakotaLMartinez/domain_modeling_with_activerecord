### 1. Describe the App we want to build
A blog application where users can create posts, add comments to them and like or unlike them.
### 2. What features could the application have? 
- Users can create posts 
- Users can comment on posts
- Users can like posts
- Users can view a post's comments
- Users can view the posts they have liked
- Users can view posts they've commented on
- Users can view posts they've created
- Posts can have tags
- We can view posts that share a certain tag



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


- Like <=> Comment
  - none

- Like <=> Tag
  - none

### 5. Go through the models and describe any attributes they'll have (remember to add foreign keys for those models that have a reference to other mdoels)

- A user will have a username
- A post will have a tile and content
- A like will have a reference to the post and the user that liked it
- A Comment will have content and a reference to the post it's about and the user who made it
- A Tag will have a name



### 6. Revisit the list of features and see if there are additional associations that we missed that could help with the features we listed.

- Users can view the posts they have liked
- Users can view posts they've commented on

### 7. Take a look at our domain model and see how it feels. Could we change anything here? Leave anything out? Is there anything we can wait until later for without causing problems?


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