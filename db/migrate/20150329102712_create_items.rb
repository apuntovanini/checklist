class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :body
      t.string :hint
      t.integer :list_id
      t.integer :user_id
      t.datetime :merged_at

      t.timestamps null: false
    end
  end
end
