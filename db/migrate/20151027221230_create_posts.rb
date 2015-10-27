class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :comment
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :beer, index: true, foreign_key: true
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
