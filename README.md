
<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<p align="center">
  <h2 class ="norse" align="center" style="@font-face {font-family: 'Norse'; src: url('/fonts/Norse.otf'); font-family:'Norse'}">Members Only</h2>
</p>

Building Members Only forum where members can post gossip.

## Table of Contents

- [About the Project](#about-the-project)
- [Built With](#built-with)
- [Live Demo](#live-demo)
- [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
  * [Usage](#usage)
  * [Run Tests](#run-tests)
- [Authors](#authors)

<!-- - [Acknowledgements](#acknowledgements) -->

## About The Project
This project is intend to create an application for an online forum where members can write embarrassing posts about non-members. Inside the forum, members can see who the author of a post is, but outside, they can only see the story and wonder who wrote it.

### Screenshot
![Posts Page screenshot](https://i.imgur.com/VfRP5ru.jpg)

## Built With

- [Ruby](https://www.ruby-lang.org)
- [Ruby on Rails](https://rubyonrails.org/)

## Live Demo

[Live Demo Link](https://members-only-site.herokuapp.com/)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Windows

```sh
https://www.ruby-lang.org/es/documentation/installation/#rubyinstaller
https://gorails.com/setup/windows/10
```

- Ubuntu 18.04

```sh
sudo apt-get install ruby-full
gem install rails -v 5.1.7
```
<!-- ### Setup -->

### Installation

Clone the repo with:

```sh
git clone https://github.com/rna/rails-authentication
```

Instal gems with:

```sh
bundle install
```

Setup database with:

```sh
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```sh
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```sh
    rpsec --format documentation
```
<!-- ### Deployment -->


### Author

👤 **Ramesh Naidu Allu**

- Github: [@rna](https://github.com/rna)
- Twitter: [@rnadev](https://twitter.com/rnadev)
- Linkedin: [Linkedin](https://linkedin.com/in/rnadev)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

<!-- ## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc -->

## 📝 License

This project is [MIT](lic.url) licensed.


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/rna/rails-authentication.svg?style=flat-square
[contributors-url]: https://github.com/rna/rails-authentication/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/rna/rails-authentication.svg?style=flat-square
[forks-url]: https://github.com/rna/rails-authentication/network/members
[stars-shield]: https://img.shields.io/github/stars/rna/rails-authentication.svg?style=flat-square
[stars-url]: https://github.com/rna/rails-authentication/stargazers
[issues-shield]: https://img.shields.io/github/issues/rna/rails-authentication.svg?style=flat-square
[issues-url]: https://github.com/rna/rails-authentication/issues
[license-shield]: https://img.shields.io/badge/License-MIT-yellow.svg
[license-url]: https://opensource.org/licenses/MIT
