class CreateTextThreads < ActiveRecord::Migration[5.0]
  def change
    create_table :text_threads do |t|
      t.string :sender

      t.timestamps
    end
  end
end
