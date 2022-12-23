class SpaceAge
  SECONDS_IN_A_YEAR = 31557600.0
  ORBITAL_PERIOD = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(age)
    @age_in_seconds = age
  end

  def on_earth
    @age_in_seconds / SECONDS_IN_A_YEAR
  end

  def on_mercury
    @age_in_seconds / (SECONDS_IN_A_YEAR * ORBITAL_PERIOD[:mercury])
  end

  def on_venus
    @age_in_seconds / (SECONDS_IN_A_YEAR * ORBITAL_PERIOD[:venus])
  end

  def on_mars
    @age_in_seconds / (SECONDS_IN_A_YEAR * ORBITAL_PERIOD[:mars])
  end

  def on_jupiter
    @age_in_seconds / (SECONDS_IN_A_YEAR * ORBITAL_PERIOD[:jupiter])
  end

  def on_saturn
    @age_in_seconds / (SECONDS_IN_A_YEAR * ORBITAL_PERIOD[:saturn])
  end

  def on_uranus
    @age_in_seconds / (SECONDS_IN_A_YEAR * ORBITAL_PERIOD[:uranus])
  end

  def on_neptune
    @age_in_seconds / (SECONDS_IN_A_YEAR * ORBITAL_PERIOD[:neptune])
  end
end
