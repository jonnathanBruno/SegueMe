class CreateDatabase < ActiveRecord::Migration[6.1]
  def change
    create_table :parishes do |t|
      t.string :name
      t.timestamps
    end

    create_table :speakers do |t|
      t.timestamps
      t.string :name
      t.string :email
      t.date  :birth
      t.string :address
      t.string :type_date
      t.string :contact
      t.references :parish, null: true, foreign_key: true
    end

    create_table :participants do |t|
      t.timestamps
      t.string :name
      t.string :email
      t.date  :birth
      t.string :address
      t.string :type_date
      t.string :contact
      t.references :parish, null: true, foreign_key: true
    end

    create_table :followers do |t|
      t.timestamps
      t.string :name
      t.string :email
      t.date  :birth
      t.string :address
      t.string :type_date
      t.string :contact
      t.references :parish, null: true, foreign_key: true
    end

    create_table :teams do |t|
      t.string :name
      t.integer :qnt
      t.timestamps
    end

    create_table :circles do |t|
      t.string :color
      t.timestamps
    end

    create_table :lectures do |t|
      t.string :name
      t.date :date_lecture
      t.time :time_lecture
      t.timestamps
    end

    create_table :mountings do |t|
      t.references :speaker, null: true, foreign_key: true
      t.references :participant, null: true, foreign_key: true 
      t.references :follower, null: true, foreign_key: true
      t.references :circle, null: true, foreign_key: true
      t.references :team, null: true, foreign_key: true
      t.references :lecture, null: true, foreign_key: true
      t.date :year
      t.string :occupation
      t.timestamps
    end

  end
end
