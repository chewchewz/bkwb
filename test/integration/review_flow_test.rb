require 'test_helper'

class ReviewFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "can see welcome page" do
    get "/"
    assert_select "h1", "BURGER KING LIFE"
  end

  test "create a new review" do
    get "/articles/new"
    assert_response :success
    user = User.all.first

    post "/articles", params: { article: { title: "can create", body: "article successfully.", user_id: user.id.to_i } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
    
end
