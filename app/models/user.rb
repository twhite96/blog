class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :username, presence: true
  validates :email, uniqueness: { allow_blank: true,
            case_sensitive: false },
            length: { maximum: 50 },
            email: true,
            presence: true, 
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i },
            allow_blank: true
end
