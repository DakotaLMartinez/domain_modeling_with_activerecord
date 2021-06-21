class Post < ActiveRecord::Base
  belongs_to :user
  # has_many :user_tags, as: :taggable
  has_many :likes, as: :likeable
  has_many :comments, as: :commentable
end