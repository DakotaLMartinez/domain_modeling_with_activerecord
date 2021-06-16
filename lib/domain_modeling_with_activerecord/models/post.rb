class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :comments, dependent: :destroy
  # has_many :post_tags
  # has_many :tags, through: :post_tags
end