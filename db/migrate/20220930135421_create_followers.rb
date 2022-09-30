class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :address
      t.string :type
      t.references :parish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
