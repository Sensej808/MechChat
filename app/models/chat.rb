class Chat < ApplicationRecord
  validates :members, :name, presence: true
  has_and_belongs_to_many :users
end
