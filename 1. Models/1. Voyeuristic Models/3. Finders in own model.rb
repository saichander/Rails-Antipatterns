#In posts model
class Post < ActiveRecord::Base
  scope :order_by_created_at, order('created_at DESC')
  scope :only_published, where(:state => 'published')
  scope :only_draft, where(:state => 'draft')
  def find_posts state
    if state == 'published'
      self.only_published.order_by_created_at.limit(10)
    elsif state == 'draft'
      self.only_draft.order_by_created_at.limit(10)
    end
  end
end
class PostsController < ApplicationController
  def index
    @published_posts = Post.find_posts 'published'
    @draft_posts = Post.find_posts 'draft'
  end
end
