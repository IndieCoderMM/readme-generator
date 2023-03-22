class Input 
    def self.get(prompt, required: true)
        valid = false
        until valid 
            print prompt, " >> "
            input = gets.chomp.strip 
            next if input.length.zero? && required 
            valid = true
        end
        input 
    end

    def self.get_li(prompt, list)
        ok = false 
        i = 1
        until ok 
            print prompt, " [#{i}] >> "
            input = gets.chomp.strip 
            if input.length.zero?
                ok = true 
            else 
                list.push(input)
                i += 1
            end
        end
    end

    def self.get_choice(prompt, options)
        valid = false
        until valid 
            print "#{prompt} #{options.to_s} >> "
            input = gets.chomp.to_s.strip.downcase
            valid = true if options.include?(input)
        end
        input 
    end
end
