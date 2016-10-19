class Car < ActiveRecord::Base
  validates :direction, :presence => true
  validates :speed, :presence => true

  def turn(new_direction)
    self.direction = new_direction
  end

  def brake
    self.speed = 0
  end

  def accelerate
    self.speed = [speed + 10, 100].min
  end
  # Other, car-related activities...
end


class Bicycle < ActiveRecord::Base
  validates :direction, :presence => true
  validates :speed, :presence => true

  def turn(new_direction)
    self.direction = new_direction
  end

  def brake
    self.speed = 0
  end

  def accelerate
    self.speed = [speed + 1, 20].min
  end
  # Other, bike-related activities...
end
