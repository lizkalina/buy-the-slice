class CreateUserSlices < ActiveRecord::Migration
  def change
    create_table :user_slices do |t|
      t.integer :user_group_id
      t.integer :pizza_id

      t.timestamps null: false
    end
  end
end
