class Input 
    def self.get(prompt, required: true, type: 'str', transform: "", default: "")
        input = default
        loop do
            print prompt, " >> "
            input = gets.chomp.strip 
            if input.length.zero? && required 
                puts "*Required Input!"
                next
            end
            if type == 'email' && !Input.vaild_email?(input)
                puts "*Looks like this is not an email!"
                next
            end

            break
        end

        return input.split.map(&:capitalize).join(' ') if transform == 'caps'
        return input.downcase if transform == 'down'
        return input.upcase if transform == 'up'

        input
    end

    def self.get_li(prompt)
        list = []
        i = 1
        loop do
            print prompt, " [#{i}] >> "
            input = gets.chomp.strip 
            break if input.length.zero?
               
            list.push(input)
            i += 1
        end

        list
    end

    def self.get_choice(prompt, options, default: nil)
        loop do
            print "#{prompt} #{options.to_s} >> "
            input = gets.chomp.to_s.strip.downcase
            return input if options.include?(input)
            return default if options.include?(default) && input.empty?
        end
    end

    def self.vaild_email?(input)
        pattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
        return true if input.match(pattern)
        false
    end
end