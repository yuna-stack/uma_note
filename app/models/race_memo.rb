class RaceMemo < ApplicationRecord
    validates :race_name, presence: true
    validates :held_on, presence: true
    validates :track_condition, inclusion: { in: ["良", "稍重", "重", "不良" ]}, allow_blank: true
end
