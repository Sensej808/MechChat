class ChatMember < ApplicationRecord
  validates :user_id, :chat_id, presence: true
  belongs_to :user
  belongs_to :chat
end

