require 'rest-client'
require 'json'

url = "http://www.nhl.com/stats/rest/grouped/skaters/basic/season/skatersummary?cayenneExp=seasonId=20162017%20and%20gameTypeId=2&factCayenneExp=gamesPlayed%3E=1&sort=[{%22property%22:%22points%22,%22direction%22:%22DESC%22},{%22property%22:%22goals%22,%22direction%22:%22DESC%22},{%22property%22:%22assists%22,%22direction%22:%22DESC%22}]"
response = RestClient.get(url)
json = JSON.parse(response)

json['data'].each do |player|
    p = Player.create(
      assists: player['assists'],
      goals: player['goals'],
      points: player['points'],
      first_name: player['playerFirstName'],
      last_name: player['playerLastName'],
      position: player['playerPositionCode'],
      teams_played_for: player['playerTeamsPlayedFor']
    )
    puts p.valid?
end
