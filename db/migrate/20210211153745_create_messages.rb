class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :content
      t.integer :counter, default: 1

      t.timestamps
    end
  end
end
