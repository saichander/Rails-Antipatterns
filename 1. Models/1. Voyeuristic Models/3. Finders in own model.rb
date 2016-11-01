class PostsController < ApplicationController
  def index
    @published_posts = Post.find(:all, :conditions => { :state => 'published' },
                                 :limit => 10,
                                 :order => 'created_at desc')

    @draft_posts = Post.find(:all, :conditions => { :state => 'draft' },
                             :limit => 10,
                             :order => 'created_at desc')
  end
end
