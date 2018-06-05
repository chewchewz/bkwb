require 'test_helper'

class CommentTest < ActiveSupport::TestCase
 
  setup do 
    @user = User.first
    @article = Article.first
  end

  test "comment should not be accepted with no args" do
    comment = Comment.new
    assert_not comment.save, "comment saved without args"
  end

  test "comment should not save without a user" do 
    comment = Comment.new(article_id: @article.id)
    assert_not comment.save, "did not save comment succesfully"
  end

  test "comment should not save without an article" do 
    comment = Comment.new(user_id: @user.id)
    assert_not comment.save, "did not save comment succesfully"
  end

  test "comment should save with all args" do 
    comment = Comment.new(user_id: @user.id, article_id: @article.id)
    assert comment.save, "did not save comment succesfully"
  end

  # test "the truth" do
  #   assert true
  # end
end
