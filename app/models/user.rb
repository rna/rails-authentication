class User < ApplicationRecord
  has_many :posts
  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 100},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
  def self.new_token
    SecureRandom.urlsafe_base64
  end
  
  def self.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
 
  def remember
    create_remember_token
    save
  end

  def authenticated?(token)
    token == remember_token
  end

  def forget
    update_attribute(:remember_token, nil)
  end

  private
    def create_remember_token
      self.remember_token = User.digest(User.new_token)
    end
end
