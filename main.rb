require './generator'
require './input'

INTERPRETERS = {
    "ruby"=> {
        install_cmd: "gem install",
        run_cmd: "ruby main.rb",
        test_cmd: "rspec spec",
    }, 
    "node"=> {
        install_cmd: "npm install",
        run_cmd: "npm start",
        test_cmd: "npm test"
    }
}

username = "Unknown"
repo_name = "repo-name"
author_name = "Unknown"
title = "Title"
description = "README generated with Ruby"
license = "MIT"
tech_stack = []
features = []
future_features = []
demo_link = "https://google.com"
interp_name = "ruby"
out_dir = './out/readme.md'

username = Input.get("GitHub Username")
author_name = Input.get("Your Name")
gmail = Input.get("Your Email")
linkedin = Input.get("Your LinkedIn")
repo_name = Input.get("Repo Name")
title = Input.get("Project Title")
description = Input.get("Description", required: false)
demo_link = Input.get("Demo Link", required: false )
license = Input.get("License Type")
Input.get_li("Tech Stack", tech_stack)
Input.get_li("Features", features)

interp_name = Input.get_choice("Choose Interpreter:", ["node", "ruby"])
interp = INTERPRETERS[interp_name]

Input.get_li("Future Features", future_features)

Generator.generate(out_dir)