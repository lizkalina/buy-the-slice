class CreateGroupPizzas < ActiveRecord::Migration
  def change
    create_table :group_pizzas do |t|
      t.integer :group_id
      t.integer :restaurant_pizza_id
      t.integer :quantity
      t.boolean :closed

      t.timestamps null: false
    end
  end
end
