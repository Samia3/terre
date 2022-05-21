def argument
	saisie = /[0-2][0-9]:[0-5][0-9]/
	hour = ARGV[0].split(":").slice(0)
	

	if(ARGV.length != 1)
		puts "#{File.basename(__FILE__)} require only one arguments"

	elsif(ARGV[0].match?(saisie) == false || hour.to_i > 23)
	    puts "Veuillez introduire l'heure au format 24h 'HH:MM' "
	else 
		heure 
	end
end

def heure
	hour = ARGV[0].split(":").slice(0)
	minute = ARGV[0].split(":").slice(1)

	if(hour.to_i == 12)
		puts hour << ":" << minute << "PM"
	elsif(hour.to_i == 00)
		puts 12.to_s << ":" << minute << "AM"
	elsif(hour.to_i >12 && hour.to_i < 24)
		puts (hour.to_i - 12).to_s << ":" << minute << "PM"
	else 
		puts hour << ":" << minute << "AM"
	
	end

end

argument