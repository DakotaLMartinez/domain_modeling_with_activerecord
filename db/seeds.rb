models = [Comment, Like, Post, User]

models.each {|model| model.destroy_all}

user_data = [
  {username: "Dakota"},
  {username: "Victoria"},
  {username: "Nicholas"},
  {username: "Leon"},
  {username: "Mo"},
  {username: "Jami"}
]

users = user_data.map{|attributes| User.create(attributes)}

post_data = [
  {
    title: "Seeds are fun",
    content: "yup, that's my story and i'm sticking to it",
    user: User.first
  }
]

posts = post_data.map{|attributes| Post.create(attributes)}

comment_data = [
  {
    content: "This stuff is crazy weird but awesome :-D", 
    post: posts.first,
    user: users[3]
  }
]

comments = comment_data.map{|attributes| Comment.create(attributes)}

like_data = [
  {
    user: users.last,
    likeable: posts.first
  },
  {
    user: users.first,
    likeable: comments.first
  }
]

likes = like_data.map{|attributes| Like.create(attributes)}


Pry.start