def argument

	saisie = /\A[-+]?\d+\z/

	if(ARGV.length != 1)
		puts "error"
	elsif(ARGV[0].match?(saisie) == false)
		puts "error"
	else
		racine
	end
end

def racine
	number = ARGV[0].to_f
    precision = 0.001
    vmin = 0
    vmax = number
    while true
        moy=(vmax+vmin)/2
        if(moy*moy>number)
            vmax=moy
        else
            vmin=moy
        end
        value=(moy*moy-number)
        if value.abs<=precision
            break
        end
    end
    puts moy.round
end

argument