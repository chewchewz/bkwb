class User < ApplicationRecord
  validates :email, uniqueness: true, on: :create, presence: true

  has_many :articles, dependent: :destroy
  has_many :comments
end
