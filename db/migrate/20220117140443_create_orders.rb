class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.text :name
      t.text :address
      t.text :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
