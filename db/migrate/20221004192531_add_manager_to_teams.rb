class AddManagerToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :manager, :boolean
  end
end
