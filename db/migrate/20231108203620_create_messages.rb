class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :message, null: false
      t.references :user, null: false
      t.references :chat, null: false
      t.timestamps
    end
  end
end
