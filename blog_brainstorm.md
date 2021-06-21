### 1. Describe the App we want to build
A blog application where users can create posts, add comments to them and like or unlike them.
### 2. What features could the application have? 

- Users can create posts (with tags?)
- Users can comment on posts
- Users can like posts
- Users can like comments
- Users can view all posts
- Users can view all posts they've liked
- Users can view all posts they've commented on
- Users can view all posts that share a tag
- Users can view all comments they've liked.
- User can Tag other users in a comment


For now, feel free to keep things open and just list things that we could do. We don't have to actually build everything here.

### 3. In the description and list above, what types of *things* have we've mentioned? (make a list below)
#### Build Now
- User
- Post
- Like
- Comment
#### Build Later
- Tag
- PostTag
- UserTag?

The *things* in this list are potential models in our program. For now, let's keep things open, we can decide which things we actually want to build later. Our goal here is to think of as many possible models we might need to support our application. We can pare down the list later on.

### 4. Go through the models two at a time and ask how they're related to one another. Make sure to talk through this from both perspectives (User has many posts, post belongs to user). If you hit many to many between two, think about what the join model should be called and add it.

- User <=> Post
  - user has many posts
  - post belongs to user
- User <=> Like
  - user has many likes
  - like belongs to user
- User <=> Comment
  - user has many comments
  - comment belongs to user
<!-- - User <=> Tag
  - user has many tags
  - tag has many users -->
<!-- - User <=> UserTag -->
- Post <=> Like
  - post has many likes
  - like belongs to post
- Post <=> Comment
  - post has many comments
  - comment belongs to post
- Like <=> Comment
  - like belongs to comment
  - comment has many likes



- Post <=> Tag
  - post has many tags
  - tag has many posts

### 5. Go through the models and describe any attributes they'll have (remember to add foreign keys for those models that have a reference to other mdoels)



### 6. Revisit the list of features and see if there are additional associations that we missed that could help with the features we listed.


### 7. Take a look at our domain model and see how it feels. Could we change anything here? Leave anything out? Is there anything we can wait until later for without causing problems?


### 8. Sketch out some examples of model objects (we'll use these to create seeds later)

