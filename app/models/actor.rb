class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    belongs_to :network

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_character
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end

end