require 'test_helper'

class ArticleFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "can see welcome page" do
    get "/"
    assert_select "h1", "BURGER KING LIFE"
  end

  test "create a new article" do
    get "/articles/new"
    assert_response :success
    user = User.all.first

    post "/articles", params: { article: { title: "can create", body: "article successfully.", user_id: user.id.to_i, summary: "a decent summary" } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "can edit an article" do 
    article_id = Article.all.first.id
    user_id = User.all.first.id

    get "/articles/#{article_id}/edit"
    assert_response :success

    put "/articles/#{article_id}", params: { article: { title: "a brand new title", body: "article successfully.", summary: "a decent summary", user_id: user_id } }
    assert_response :redirect
    
  end
    
end
