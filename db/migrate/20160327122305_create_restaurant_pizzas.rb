class CreateRestaurantPizzas < ActiveRecord::Migration
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :restaurant_id
      t.integer :pizza_id
      t.string :size
      t.decimal :price, precision: 2

      t.timestamps null: false
    end
  end
end
