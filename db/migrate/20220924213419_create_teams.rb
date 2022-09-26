class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :nome_equipe
      t.integer :qnt_componente

      t.timestamps
    end
  end
end
