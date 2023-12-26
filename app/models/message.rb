class Message < ApplicationRecord
    validates :content, presence: true
    belongs_to :user
    belongs_to :chat

    after_create_commit {broadcast_message}

    def broadcast_message

    end
end
