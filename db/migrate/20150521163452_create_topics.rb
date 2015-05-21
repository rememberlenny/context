class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :slug
      t.string :description

      t.timestamps null: false
    end
  end
end
