<a name="readme-top"></a>
[![Contributors](https://img.shields.io/github/contributors/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/graphs/contributors)
[![Stargazers](https://img.shields.io/github/stars/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/stargazers)
[![Issues](https://img.shields.io/github/issues/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/issues)
[![License](https://img.shields.io/github/issues/<%= username %>/<%= repo_name %>)](https://github.com/<%= username %>/<%= repo_name %>/blob/main/LICENSE)

# 💎 <%= title %>

<%= description %>


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

You can visit the [live demo website here](<%= demo_link %>).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started

To run this project locally, follow these steps.

### Prerequisites

In order to run this project you need <%= interpreter %> installed on your machine.

### Setup

Clone this repository to your desired foler.

```sh
cd my-project
git clone git@github.com:<%= username %>/<%= repo_name %>.git .
```

### Installation

Intall this project with:

```sh
<%= install_cmd %>

```

### Usage

To run the project, execute the following command:

```sh
<%= run_cmd %>

```

### Run tests

To run tests, run the following command:

```sh
<%= test_cmd %>

```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👨‍🚀 Author

**<%= author_name %>**
- GitHub: [@<%= username %>](https://github.com/<%= username %>)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💖 Show Your Support

If you like this project, please consider giving it a ⭐.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📜 License

This project is [<%= license_type %>](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>