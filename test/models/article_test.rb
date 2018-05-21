require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test "doesn't save article without title" do
    article = Article.new
    assert_not article.save, "Saved article without title"
  end

end
