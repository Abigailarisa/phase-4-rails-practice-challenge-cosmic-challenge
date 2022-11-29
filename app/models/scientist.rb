class Scientist < ApplicationRecord
    has_many :missions
    has_many :planets, through: :missions

    # must have a name, and a field_of_study
    # names must be unique

    validates :name, :field_of_study, presence: true
    validates :name, uniqueness: true
end
