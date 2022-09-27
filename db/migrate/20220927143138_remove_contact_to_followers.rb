class RemoveContactToFollowers < ActiveRecord::Migration[6.1]
  def change
    remove_column :followers, :contato, :string
  end
end
