class AddSurnameToParticipants < ActiveRecord::Migration[6.1]
  def change
    add_column :participants, :surname, :string
  end
end
