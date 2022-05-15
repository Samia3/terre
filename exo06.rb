def inverser

	saisie = /\A[-+]?\D+\z/

	if(ARGV.length != 1 || ARGV[0].match?(saisie) == false)
		puts "error"
	else
		puts ARGV[0].split('').reverse.join('')
	end
end

inverser