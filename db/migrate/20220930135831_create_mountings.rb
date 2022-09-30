class CreateMountings < ActiveRecord::Migration[6.1]
  def change
    create_table :mountings do |t|
      t.references :follower, null: false, foreign_key: true
      t.references :team, null: true, foreign_key: true
      t.references :circle, null: true, foreign_key: true
      t.date :year
      t.string :occupation

      t.timestamps
    end
  end
end
