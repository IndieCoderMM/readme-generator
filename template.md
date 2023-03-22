<a name="readme-top"></a>
[![Contributors](https://img.shields.io/github/contributors/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/graphs/contributors)
[![LastUpdate](https://img.shields.io/github/last-commit/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/commits/main)
[![Stargazers](https://img.shields.io/github/stars/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/stargazers)
[![Issues](https://img.shields.io/github/issues/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/issues)
[![License](https://img.shields.io/github/license/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/blob/main/LICENSE)

# 💎 <%= title %>
% if description.length
<%= description %>
% else
This file is generated in Ruby.
% end


## 📸 Screenshot

<img src="https://via.placeholder.com/468x300?text=App+Screenshot+Here" width=468 height=300 alt="screenshot" />

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🧰 Tech Stack
% tech_stack.each do |tech|
- <%= tech %>
% end

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ✨ Features
% features.each do |feature|
- <%= feature %>
% end 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo

You can visit the [live demo website here](<%= demo_link ? demo_link : "https://google.com" %>).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started

To run this project locally, follow these steps.

### Prerequisites

In order to run this project you need <%= interp_name.capitalize %> installed on your machine.

### Setup

Clone this repository to your desired foler.

```sh
cd my-project
git clone git@github.com:<%= username %>/<%= repo_name %>.git .
```

### Installation

Intall this project with:

```sh
<%= interp[:install_cmd] %>

```

### Usage

To run the project, execute the following command:

```sh
<%= interp[:run_cmd] %>

```

### Run tests

To run tests, run the following command:

```sh
<%= interp[:test_cmd] %>

```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👨‍🚀 Author

**<%= author_name %>**

I am always looking for ways to improve my project. If you have any suggestions or ideas, I would love to hear from you.

[![Github](https://img.shields.io/badge/GitHub-673AB7?style=for-the-badge&logo=github&logoColor=white)](https://github.com/<%= username %>)
[![Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/<%= linkedin %>)
[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:<%= gmail %>)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🎯 Future Features

% future_features.each do |todo|
- [ ] <%= todo %>
% end

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💖 Show Your Support

If you like this project, please consider giving it a ⭐.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📜 License

This project is [<%= license %>](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>