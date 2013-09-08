class Checkout < ActiveRecord::Migration
  def change
    create_table :checkout do |t|
      t.integer :book_id
      t.string :reader_name
      t.string :reader_address
      t.string :reader_email
      t.integer :reader_phone

      t.timestamps
    end
  end
end
