json.array!(@the_teams) do |the_team|
  json.extract! the_team, :id
  json.url the_team_url(the_team, format: :json)
end
