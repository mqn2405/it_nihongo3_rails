class CreateBookreviews < ActiveRecord::Migration[6.0]
  def change
    create_table :bookreviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :review

      t.timestamps
    end
  end
end
