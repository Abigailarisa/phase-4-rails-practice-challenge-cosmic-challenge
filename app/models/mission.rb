class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to :planet

    # must have a name, a scientist and a planet
    # a scientist cannot join the same mission twice

    validates :name, presence: true
    validates :scientist, uniqueness: { scope: :name }
end
