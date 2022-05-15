if(ARGV.length <= 1)
	puts "mettez plus d'arguments pour mieux visualiser le résultat !"
else
	for i in 0..(ARGV.length() -1)
		print ARGV[i] + "\n"
	end
end
