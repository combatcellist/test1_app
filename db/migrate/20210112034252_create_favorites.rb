class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :post_reader_id
      t.string :post_id

      t.timestamps
    end
  end
end
