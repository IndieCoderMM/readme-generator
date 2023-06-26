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

HEADINGS = {
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