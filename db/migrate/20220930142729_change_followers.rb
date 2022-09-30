class ChangeFollowers < ActiveRecord::Migration[6.1]
  def change
    rename_column :followers, :type, :type_date
  end
end
