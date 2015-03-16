class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :book, index: true
      t.string :email
      t.string :token
      t.money :cost
      t.text :description
      t.string :stripe_id

      t.timestamps null: false
    end
    add_foreign_key :purchases, :books
  end
end
