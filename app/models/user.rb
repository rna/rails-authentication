class User < ApplicationRecord
  has_many :posts
  attr_accessor :remember_token
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(token)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost

    BCrypt::Password.create(token, cost: cost)
  end

  def remember
    update_column(:remember_token, User.digest(User.new_token))
  end

  def authenticated?(token)
    return false unless remember_token

    BCrypt::Password.new(remember_token).is_password?(token)
  end

  def forget
    update_column(:remember_token, nil)
  end
end
