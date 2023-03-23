require 'erb'

class Generator 
    def self.get_template(filename)
        file = File.open(filename)
        template = file.read
        file.close
        template 
    end
    
    def self.generate(out_dir)
        template = Generator.get_template('./template.md')
        readme = ERB.new(template, trim_mode: "%<>")
        File.write(out_dir, readme.result)
    end
end
