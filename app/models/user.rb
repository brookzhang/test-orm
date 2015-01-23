class User < ActiveRecord::Base
  has_many :posts
  has_many :visible_posts, -> { merge(Post.active) }, class: Post
  has_many :visible_posts_comments, -> { includes(:post).merge(Post.active) }, class: Comment
  has_many :posts_comments, through: :posts, source: :comments

  has_many :comments
end
