class User < ActiveRecord::Base
  has_many :posts
  has_many :likes
  has_many :comments
  has_many :liked_posts, through: :likes, source: :likeable, source_type: "Post"
  has_many :commented_posts, through: :comments, source: :commentable, source_type: "Post"
  has_many :liked_comments, through: :likes, source: :likeable, source_type: "Comment"
end