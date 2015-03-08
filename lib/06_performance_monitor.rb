def measure(n = 1)
	start_time = Time.now
	n.times{yield}
	end_time = Time.now

	if n > 1
		(end_time - start_time) / n
	else
		end_time - start_time
	end

end
