class AddEmailToFollowers < ActiveRecord::Migration[6.1]
  def change
    add_column :followers, :email, :string
    add_column :followers, :endereco, :text
  end
end
