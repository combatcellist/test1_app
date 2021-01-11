class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text          :text,             null: false
      t.references   :post_writer,      foreign_key: true
      t.references   :post_reader,      foreign_key: true
      t.references   :post,             foreign_key: true
      t.timestamps
    end
  end
end
