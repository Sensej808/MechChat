class AddMembersToChats < ActiveRecord::Migration[7.1]
  def change
    add_column :chats, :members, :integer
  end
end
