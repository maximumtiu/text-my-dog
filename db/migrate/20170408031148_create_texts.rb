class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.string :type
      t.integer :text_thread_id
      t.text :body
      t.string :attachment_link

      t.timestamps
    end
  end
end
