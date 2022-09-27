class AddContatoToFollowers < ActiveRecord::Migration[6.1]
  def change
    add_column :followers, :contato, :string
  end
end
