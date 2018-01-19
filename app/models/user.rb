class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :username, presence: true,
            length: { maximum: 25 }
  validates :email, uniqueness: { allow_blank: true,
            case_sensitive: false },
            length: { maximum: 50 },
            email: true,
            presence: true
end
