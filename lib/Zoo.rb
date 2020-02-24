class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        animals.map {|animals| animals.species}.uniq
    end

    def find_by_species(species)
        animals.select {|a| a.species == species}
    end

    def animal_nicknames
        animals.map {|a| a.nickname}
    end

    def self.find_by_location(location)
        self.all.select {|zoos| zoos.location == location}
    end

end
