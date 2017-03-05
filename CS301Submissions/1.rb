def testing(a,b)
	sum = pending = 0
	c = -1
	n.times do |i|
		if d[i] == 0
			lol += 1
			if c == -1
				c = i
			end
		end
	end
	sum = pending * 1000 + (c == -1 ? 0 : (b - c) * 100)
	puts sum
end