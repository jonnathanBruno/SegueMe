class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :contato_1
      t.string :contato_2
      t.references :follower, null: false, foreign_key: true

      t.timestamps
    end
  end
end
