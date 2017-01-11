# require_relative 'engine'

class Car

	attr_reader :wheels

	def initialize
		@wheels = 4
		@that_thing = true
	end

	def drive
		"I'm driving"
	end

end

class Tesla < Car
	MAX_RANGE = 265

	attr_reader :model, :battery_charge

	def initialize(things = {})
		super		# ?!?!?!
		@that_thing = false
		@battery_charge = 100.0
		@model = things.fetch(:model, "75D")
		# @engine = things.fetch(:engine, Engine.new)
	end

	def drive
		"I'm a Tesla"
	end

end

car = Car.new
p car.drive
# tesla = Tesla.new()
# p tesla
# p tesla.drive

# cool_engine = Engine.new(type: "electric") #whyyyyy???
# new_tesla = Tesla.new(model: "P100D", engine: cool_engine)
# p new_tesla