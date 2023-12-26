class CreateMessageTexts < ActiveRecord::Migration[7.1]
  def change
    create_table :message_texts do |t|
      t.text :body

      t.timestamps
    end
  end
end
