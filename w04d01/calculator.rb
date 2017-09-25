# methods
def add(num1, num2)
	puts num1 + num2
end

def subtract(num1, num2)
	puts num1 - num2
end

def multiply(num1, num2)
	puts num1 * num2
end

def divide(num1, num2)
	puts num1 / num2
end

def powers(num1, num2)
	puts num1 ** num2
end

def square_root(num1)
	puts Math.sqrt(num1)
end

def bmi_one (num1, num2)
	puts (num1 / num2) / num2
end

def bmi_two (num1, num2)
	puts ((num1 * 6.4) / (num2 / 100)) / (num2 / 100)
end
# methods end

# global
puts "(b)asic, (ad)vanced, bmi"
choice = gets.chomp

# choices
if choice === "b" then puts "choose if you want to (a)dd, (s)ubtract, (d)ivide or (m)ultiply"
	choice = gets.chomp
	num1 = gets.chomp.to_f
	num2 = gets.chomp.to_f
	case choice
	when "a"
		add(num1, num2)
	when "s"
		subtract(num1, num2)
	when "m"
		multiply(num1, num2)
	when "d"
		divide(num1, num2)
	end
elsif choice === "ad" then puts "choose if you want to (a)dd, (s)ubtract, (d)ivide, (m)ultiply, (p)ower or (sq)uare root"
	choice = gets.chomp
	num1 = gets.chomp.to_f
	num2 = gets.chomp.to_f
	case choice
	when "a"
		add(num1, num2)
	when "s"
		subtract(num1, num2)
	when "m"
		multiply(num1, num2)
	when "d"
		divide(num1, num2)
	when "p"
		powers(num1, num2)
	when "sq"
		square_root(num1)
	end
elsif choice === "bmi" then puts "if in kg and metres choose (1) or stones and cm choose (2)"
	choice = gets.chomp
	num1 = gets.chomp.to_f
	num2 = gets.chomp.to_f
	case choice
	when "1"
		bmi_one(num1, num2).round
	when "2"
		bmi_two(num1, num2)
	end
	
elsif choice != "b" || choice != "ad"
	puts "Error, try again"
# elsif choice != "a" || choice != "m" || choice != "s" || choice != "d" || choice != "p" || choice != "sq"
# 	puts "Error try again"	
end


	# choice = gets.chomp
	# num1 = gets.chomp.to_f
	# num2 = gets.chomp.to_f
# elsif choice === "ad"
# 	puts "choose if you want to (a)dd, (s)ubtract, (d)ivide, (m)ultiply, (p)ower or (sq)uare root"
# 	choice = gets.chomp
# 	num1 = gets.chomp.to_f
# 	num2 = gets.chomp.to_f
# end


# basic operation if statements
# if choice === "a"
# 	add(num1, num2)
# elsif choice === "s"
# 	subtract(num1, num2)
# elsif choice === "d"
# 	divide(num1, num2)
# elsif choice === "m"
# 	multiply(num1, num2)
# elsif choice === "p"
# 	powers(num1, num2)
# elsif choice === "sq"
# 	square_root(num1)
# end

# while choice === "b"
# 	puts "choose if you want to (a)dd, (s)ubtract, (d)ivide or (m)ultiply"
# 	choice = gets.chomp
# 	num1 = gets.chomp.to_f
# 	num2 = gets.chomp.to_f
# 	case choice
# 	when "a"
# 		add(num1, num2)
# 	when "s"
# 		subtract(num1, num2)
# 	when "m"
# 		multiply(num1, num2)
# 	when "d"
# 		divide(num1, num2)
# 	end
# end

# while choice === "ad"
# 	puts "choose if you want to (a)dd, (s)ubtract, (d)ivide, (m)ultiply, (p)ower or (sq)uare root"
# 	choice = gets.chomp
# 	num1 = gets.chomp.to_f
# 	num2 = gets.chomp.to_f
# 	case choice
# 	when "a"
# 		add(num1, num2)
# 	when "s"
# 		subtract(num1, num2)
# 	when "m"
# 		multiply(num1, num2)
# 	when "d"
# 		divide(num1, num2)
# 	when "p"
# 		powers(num1, num2)
# 	when "sq"
# 		square_root(num1)
# 	end
# end

