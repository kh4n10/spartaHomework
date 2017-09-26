class Square
	attr_accessor :side_length, :scaling_factor

	def initialize (side_length, scaling_factor)
		self.side_length = side_length
		self.scaling_factor = scaling_factor
	end

	def calculate_area
  	self.side_length ** 2
	end

	def calculate_perimeter
  	self.side_length * 4
	end

	def scaled_area
		(self.side_length ** 2) * self.scaling_factor
	end

	def scaled_perimeter
		(self.side_length * 4) * self.scaling_factor
	end

	def description
		puts "Area: #{self.calculate_area} Perimeter: #{self.calculate_perimeter}"
		puts "Scaled Area: #{self.scaled_area} Scaled Perimeter: #{self.scaled_perimeter}"
	end

end
