class Engine

	def initialize(stuff = {})
		@type = stuff.fetch(:type, "dead dinos")
	end

end