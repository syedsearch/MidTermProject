json.array!(@olympic_medals) do |olympic_medal|
  json.extract! olympic_medal, :id, :athlete_name, :event, :country, :medal_type, :event_date
  json.url olympic_medal_url(olympic_medal, format: :json)
end
