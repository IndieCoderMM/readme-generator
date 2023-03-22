require 'erb'

file = File.open('./template.md')
template = file.read
file.close

username = "Indiecodermm"
repo_name = "readme-generator"
title = "Awesome Project"
description = "This readme is generated with Ruby."
tech_stack = ["Ruby", "ERB", "Rubocop"]
features = ["Generate readme", "Easy to use", "Console apps"]
demo_link = "https://google.com"
interpreters = {"ruby"=> {
    install_cmd: "gem install",
    run_cmd: "ruby main.rb",
    test_cmd: "rspec spec",
}, "node"=> {
    install_cmd: "npm install",
    run_cmd: "npm start",
    test_cmd: "npm test"
}}
interpreter = "ruby"
interp = interpreters[interpreter]
install_cmd = interp[:install_cmd]
run_cmd = interp[:run_cmd]
test_cmd = interp[:test_cmd]
author_name = "Hein Thant"
license_type = "MIT"

readme = ERB.new(template, trim_mode: "%<>")

File.write('./out/readme.md', readme.result.lstrip)