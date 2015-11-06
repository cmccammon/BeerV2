class AddBeerIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :beer_id, :string
  end
end
