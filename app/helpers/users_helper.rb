module UsersHelper
  def articles?(user)
    return user.articles.count
  end

  def last_article(user)
    if articles?(user)
      return user.articles.order(:created_at).last
    else
      return false
    end
  end

  def comments?(user)
    return user.comments.count
  end
end
