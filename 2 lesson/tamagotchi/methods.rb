class Pets
	def initialize(name)
		@name = name
		@hp = 100
		@mood = 100
		@hunger = 0
		@tiredness = 0
		@power = 100
		@status = @@status[-1]
		@age = {year: 0, mount: 0, day: 0, hour: 0}
		@end = false
		@command = %w(feed play sleep feel help norm_day follow quit)
		@health = rand(5..10)
		@hunger = rand(5..10)
		@power = rand(5..10)
	end	