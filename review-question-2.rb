class Car

  attr_reader :make, :model

  @@aall = []

  def initialize(make:, model:)
    @make = make
    @model = model
    @@all << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "lightening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

BONUS:

Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"
