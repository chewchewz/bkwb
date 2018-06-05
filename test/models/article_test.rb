require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  setup do
    @user = User.all.first
  end

  test "doesn't save article without title" do
    article = Article.new
    assert_not article.save, "Saved article without title"
  end
 
  test "doesn't save with title of < 5 chars" do 
    article = Article.new(title: "fred")
    assert_not article.save, "Saved article without title"
  end

  test "doesn't save with summary of < 5 chars" do
    article = Article.new(title: "freddy", summary: "timo")
    assert_not article.save, "Saved article without title"
  end

  test "saves with normal summary & title" do
    article = Article.new(title: "freddy", summary: "timo glock", user_id: @user.id)
    assert article.save, "Didn't save article correctly"
  end


#  validates :title, presence: true,
#                    length: { minimum: 5 }
#  validates :summary, presence: true,
#                     length: { minimum: 5 }
#

end
