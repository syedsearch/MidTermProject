class CreateOlympicMedals < ActiveRecord::Migration
  def change
    create_table :olympic_medals do |t|
      t.string, :athlete_name
      t.string, :event
      t.string, :country
      t.string, :medal_type
      t.string :event_date

      t.timestamps null: false
    end
  end
end
