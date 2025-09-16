class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$%&@]).{8,}/, message: "Password requires eight or more characters, a lowercase letter, a capital letter, a number, and a special character." }
end
