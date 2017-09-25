
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



puts "(b)asic, (ad)vanced"
choice = gets.chomp

# choice of operation in basic
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
else puts "Error, select (b)asic or (ad)vance"
end

# choice of operation in advanced
if choice === "ad" then puts "choose if you want to (a)dd, (s)ubtract, (d)ivide, (m)ultiply, (p)ower or (sq)uare root"
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
		square_root(num1, num2)
	end
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

