class PlayerStat < ApplicationRecord
    validates :player_id, presence: true
    validates :stat_id, presence: true
    validates :match_id, presence: true
    belongs_to :player
    belongs_to :stat
    belongs_to :team
end
