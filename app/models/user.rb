class User < ApplicationRecord
  validates :password, length: { in: 8..32 }, format: { with: /\A[a-zA-Z0-9_?!]+\z/,
    message: "Only allows letters and numbers" }
    
  validates :Username, length: { in: 8..32 }, format: { with: /\A[a-zA-Z0-9]+\z/,
    message: "Only allows letters and numbers" }, presence: true, uniqueness: true
    
  validates :email, :email_format => { message: 'Enter a valid email' }, uniqueness: true
  has_secure_password
end
