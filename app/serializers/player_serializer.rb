class PlayerSerializer < ActiveModel::Serializer
  attributes :id,
    :first_name,
    :last_name,
    :name,
    :assists,
    :goals,
    :points,
    :position,
    :teams_played_for
end
