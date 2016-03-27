class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :organizer_id
      t.datetime :signup_deadline

      t.timestamps null: false
    end
  end
end
