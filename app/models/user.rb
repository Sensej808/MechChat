class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_and_belongs_to_many :chats, join_table: "chat_members"
  has_and_belongs_to_many :groups
end
