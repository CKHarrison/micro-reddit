class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, presence: true, length: { within: 4..20 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {within: 6..20}
end
