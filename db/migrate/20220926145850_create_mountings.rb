class CreateMountings < ActiveRecord::Migration[6.1]
  def change
    create_table :mountings do |t|
      t.references :follower, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.date :ano
      t.string :funcao

      t.timestamps
    end
  end
end
