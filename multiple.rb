a = 0
	for x in 1...1000
		if x % 3 == 0 || x % 5 == 0   then   
			a += x
		end
	end

	puts a