require './generator'
require './input'

INTERPRETERS = {
    "ruby"=> {
        name: "ruby",
        link: "https://www.ruby-lang.org/en/",
        install_cmd: "gem install",
        run_cmd: "ruby main.rb",
        test_cmd: "rspec spec",
    }, 
    "node"=> {
        name: "node",
        link: "https://nodejs.org/en",
        install_cmd: "npm install",
        run_cmd: "npm start",
        test_cmd: "npm test"
    }
}

# Sections
sections = {
    toc: false,
    about: true,
    screenshot: true,
    tech_stack: false,
    key_features: false,
    live_demo: false,
    getting_started: true,
    future_features: false,
    author: true,
    contribution: true,
    support: true,
    license: true
}

headings = {
    about: {text: "About The Project", emoji: "💎", link: "about-project"},
    screenshot: {text: "Screenshot", emoji: "📸", link: "screenshot"},
    tech_stack: {text: "Tech Stack", emoji: "🧰", link: "tech-stack"},
    key_features: {text: "Key Features", emoji: "✨", link: "key-features"},
    live_demo: {text: "Live Demo", emoji: "🚀", link: "live-demo"},
    getting_started: {text: "Getting Started", emoji: "💻", link: "getting-started"},
    future_features: {text: "Future Features", emoji: "🎯", link: 'future-features'},
    author: {text: "Author", emoji: "👨‍🚀", link: "author"},
    contribution: {text: "Contribution", emoji: "🤝", link: "contribution"},
    support: {text: "Show Your Support", emoji: "💖", link: "support"},
    license: {text: "License", emoji: "📜", link: "license"}
}

# Variables
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

# Get Inputs
username = Input.get("GitHub Username")
author_name = Input.get("Your Name")
gmail = Input.get("Your Email", type: "email")
linkedin = Input.get("Your LinkedIn")
repo_name = Input.get("Repo Name")
title = Input.get("Project Title")
description = Input.get("Description", required: false)
demo_link = Input.get("Demo Link", required: false )
license = Input.get("License Type")
Input.get_li("Tech Stack", tech_stack)
Input.get_li("Features", features)
interp_name = Input.get_choice("Choose Interpreter:", ["node", "ruby"], default: "node")
interp = INTERPRETERS[interp_name]
Input.get_li("Future Features", future_features)

sections[:screenshot] = Input.get_choice("Include Screenshot?", ["y", "n"], default: "y") == 'y'
sections[:toc] = Input.get_choice("Include Table of Contents?", ["y", "n"], default: "y") == 'y'

# Clean Data
author_name = author_name.split.map(&:capitalize).join(' ')
gmail = gmail.downcase
title = title.split.map(&:capitalize).join(' ')
description = description.empty? ? "This project is just awesome." : description
sections[:live_demo] = demo_link.length.positive?
sections[:tech_stack] = tech_stack.length.positive?
sections[:key_features] = features.length.positive?
sections[:future_features] = future_features.length.positive?


Generator.generate(out_dir)