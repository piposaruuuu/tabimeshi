class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :restaurant_name,   null: false
      t.string     :meal_name,         null: false
      t.text       :text,              null: false
      t.integer    :price_id,          null: false
      t.integer    :time_period_id,    null: false
      t.integer    :genre_id,          null: false
      t.integer    :person_number_id,  null: false
      t.string     :country,           null: false
      t.references :user,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
