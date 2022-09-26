class CreateParishes < ActiveRecord::Migration[6.1]
  def change
    create_table :parishes do |t|
      t.string :nome_paroquia

      t.timestamps
    end
  end
end
