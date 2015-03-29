class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.datetime :published_at
      t.integer :items_count
      t.integer :clauses_count
      t.integer :downloads_count

      t.timestamps null: false
    end
  end
end
