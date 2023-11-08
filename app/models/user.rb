class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_and_belongs_to_many :chats
  has_and_belongs_to_many :groups
end
