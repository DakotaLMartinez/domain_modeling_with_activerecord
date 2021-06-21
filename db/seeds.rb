models = [Like, Comment, Post, User]

models.each do |model| 
  model.destroy_all
end

user_data = [
  {username: "Yisrael"},
  {username: "Dakota"},
  {username: "Megan"},
  {username: "Paul"},
  {username: "Joaquin"},
  {username: "Greg"},
  {username: "Jimmy"},
  {username: "Jason"}
]

users = user_data.map do |attributes|
  User.create(attributes)
end

post_data = [
  {
    title: "This stuff is crazy!!!",
    content: "I can't wait to build some stuff and flex my skills! :)",
    user: users.first
  }
]

posts = post_data.map do |attributes|
  Post.create(attributes)
end

comment_data = [
  {
    content: "This stuff better get less crazy soon, cause it seems really cool–but I'm scared!",
    user: users[1],
    commentable: posts.first
  },
  {
    content: "Hi!",
    user: users[3],
    commentable: posts.first
  }
]

comments = comment_data.map do |attributes|
  Comment.create(attributes)
end

comment_replies_data = [
  {
    content: "Hey there!",
    user: users.first,
    commentable: comments.last
  }
]

comment_replies = comment_replies_data.map do |attributes|
  Comment.create(attributes)
end

like_data = [
  {
    likeable: comments.first,
    user: users.first
  },
  {
    likeable: comments.first,
    user: users.last
  },
  {
    likeable: comments.first,
    user: users[5]
  }

]

users.each {|user| Like.create(likeable: posts.first, user: usercd)}

likes = like_data.map do |attributes|
  Like.create(attributes)
end

@u = User.first
@p = Post.first

Pry.start