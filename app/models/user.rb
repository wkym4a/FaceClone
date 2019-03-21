class User < ApplicationRecord

  before_validation {email.downcase!}

  validates :name , presence: true, length: { maximum: 30 }

  validates :email , presence: true , uniqueness: true ,
                     length: { maximum: 255 },
                     format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  validates :password_digest , presence: true
  validates :password ,presence: true , length: {minimum: 4 , maxumum: 40}

  has_secure_password



end
