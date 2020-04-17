class PostsController < ApplicationController
  def index
    @posts = Array.new
    current_user.posts.each do |post|
      comments = Array.new
      Comment.where(commentable: post).each do |comment|
        cmmnts = Comment.where(commentable:comment).order("created_at ASC")
        comments.push({user:comment.user,comment:comment, comments:
            cmmnts})
      end
      @posts.push({post: post, comments: comments})
    end
  end
end