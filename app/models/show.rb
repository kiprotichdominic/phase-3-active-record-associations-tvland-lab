class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def self.actors_list(show)
        self.actors.map do |actor|
            self.actor.full_name
        end
    end
end