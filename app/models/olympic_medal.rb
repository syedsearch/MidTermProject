class OlympicMedal < ActiveRecord::Base
    validates :athlete_name, presence: true
    validates :country, presence: true
    validates :medal_type, :inclusion => { :in => ["gold", "silver", "bronze"] }

end
