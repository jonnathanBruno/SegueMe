class AlterEnderecoToFollowers < ActiveRecord::Migration[6.1]
  def change
    change_column :followers, :endereco, :string
  end
end
