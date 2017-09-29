class Actor
  attr_accessor :name
  attr_accessor :filmography
  attr_accessor :checked

  def initialize(name)
    @name = name
    @filmography = Array.new
    @checked = false
  end

  #Adds the actor's name to film array
  def add(film)
    film.cast.push(self)
    @filmography.push(film)
  end
  #returns a list of actors that were in the film with the actor.
  def film_hash(film)
    if film.cast.include?(self)
      fim.cast.each do |i|
        unless i == self
          puts i.name
        end
      end
    else
      puts "Not in the film."
    end
  end

  def find_kevin_bacon(films=[], currentActor=self)
    if currentActor == Kevin_Bacon
      return 0
    else
      currentActor.filmography.each do |film|
        unless film.include?(film.name)
          films.push(film.name)
        end
        if film.cast.include?(Kevin_Bacon)
          puts films
        else
          currentActor.checked = true
          film.cast.each do |actor|
            if actor.checked == false
              actor.find_kevin_bacon(films, currentActor=actor)
            end
          end
        end
      end
  end
end


class Film
  attr_accessor :name
  attr_accessor :cast
  def initialize(name)
    @name = name
    @cast = Array.new
  end
end
