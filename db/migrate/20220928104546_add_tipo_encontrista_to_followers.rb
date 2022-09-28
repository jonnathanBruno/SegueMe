class AddTipoEncontristaToFollowers < ActiveRecord::Migration[6.1]
  def change
    add_column :followers, :tipo_encontrista, :string
  end
end
