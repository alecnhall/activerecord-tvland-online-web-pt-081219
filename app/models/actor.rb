class Actor < ActiveRecord::Base
    belongs_to :show
    has_many :characters

    def full_name 
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        Actor.all.map do |a|
        a.characters.map do |c|
            "#{c.name} - #{c.show.name}"
            end
        end.flatten
    end

end