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
  <h2 class ="norse" align="center" style="@font-face {font-family: 'Norse'; src: url('/fonts/Norse.otf'); font-family:'Norse'}">Private Events</h2>
</p>

Building Private Events where members can create the events and invite the other users.

## Table of Contents

- [About the Project](#about-the-project)
- [Built With](#built-with)
- [Live Demo](#live-demo)
- [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
  * [Usage](#usage)
- [Authors](#authors)
<!-- - [Acknowledgements](#acknowledgements) -->

## About The Project
This project is intend to allows users to create events and then manage user signups. Users can create events and send invitations and parties. The goal of this project is to apply advanced associations between the tables of schema.

## Screenshot
### Profile Page
![Profile page](https://i.imgur.com/khE0iA7.png)

### Index Page
![Index page](https://i.imgur.com/gcVp0XJ.png)

## Built With

- [Ruby](https://www.ruby-lang.org)
- [Ruby on Rails](https://rubyonrails.org/)
- SQLite3

## Live Demo

[Live Demo Link]()

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

* Windows
```sh
https://www.ruby-lang.org/es/documentation/installation/#rubyinstaller
https://gorails.com/setup/windows/10
```
* Ubuntu 18.04
```sh
sudo apt-get install ruby-full
gem install rails -v 6.0.2.2,
```
<!-- ### Setup -->

### Installation
Clone the repo, install the gems & migrate databse. Follow the steps as below.

```sh
git clone https://github.com/rna/private-events

bundle install

rails db:migrate
```

### Usage
In order to run the app after installation, then run the following command in the teminal
```sh
rails server
```

<!-- ### Run tests -->

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

[contributors-shield]: https://img.shields.io/github/contributors/rna/private-events.svg?style=flat-square
[contributors-url]: https://github.com/rna/private-events/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/rna/private-events.svg?style=flat-square
[forks-url]: https://github.com/rna/private-events/network/members
[stars-shield]: https://img.shields.io/github/stars/rna/private-events.svg?style=flat-square
[stars-url]: https://github.com/rna/private-events/stargazers
[issues-shield]: https://img.shields.io/github/issues/rna/private-events.svg?style=flat-square
[issues-url]: https://github.com/rna/private-events/issues
[license-shield]: https://img.shields.io/badge/License-MIT-yellow.svg
[license-url]: https://opensource.org/licenses/MIT
