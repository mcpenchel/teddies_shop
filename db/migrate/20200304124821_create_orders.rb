class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.references :teddy, foreign_key: true
      t.references :user, foreign_key: true
      t.string :teddy_sku
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id

      t.timestamps
    end
  end
end
