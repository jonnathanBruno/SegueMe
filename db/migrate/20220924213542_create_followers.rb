class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.string :nome
      t.integer :idade
      t.references :team, null: false, foreign_key: true
      t.references :parish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
