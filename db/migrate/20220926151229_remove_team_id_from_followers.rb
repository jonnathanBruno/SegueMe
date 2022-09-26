class RemoveTeamIdFromFollowers < ActiveRecord::Migration[6.1]
  def change
    remove_column :followers, :team_id, null: false, foreign_key: true
  end
end
