<p align="center">
    <img src="" alt="Logo">
  <h3 align="center">BandDB</h3>
  <p align="center">
    Simplified Inventory Management & Digital Assistant for Band Directors
    <br />
    <br />
    <a href="https://www.loom.com/share/1fcd3ac44fe84415b8b5eb707b0ba025?sharedAppSource=personal_library">View Demo</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<!--Add Screenshot here -->

BandDB is designed to be a simple, user-friendly database management system for secondary and post-secondary band directors. If you have used Charms in the past and struggled with it, then you need to check out BandDB! 

Features of BandDB:
* Keep a digital Instrument Inventory and track which instruments are checked out to which students 
* Digitize your music library!
* Assign Lockers to students and easily access their locker combination when they forget! 

### Built With

* [React.js](https://reactjs.org/)
* [Ruby](https://www.ruby-lang.org/en/)
* [Sinatra](http://sinatrarb.com/)
* [SQLite3](https://www.sqlite.org/index.html)

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps.

### Prerequisites

* npm
  ```sh
  npm install npm@latest -g
  ```
* ruby<br/>
  You might already have ruby installed, run this to check 
  ```sh
  ruby -v
  ```
  If you don't have ruby, check this [documentation](https://www.ruby-lang.org/en/documentation/installation/#rvm) for how to install it

### Installation

Create a new directory on your machine and run the following commands in your terminal. 

1. Clone the front-end repo in your root directory
   ```sh
   git clone https://github.com/stevehvaughn/banddb-frontend.git
   ```
2. Clone the back-end repo in your root directory 
   ```sh
   git clone https://github.com/stevehvaughn/banddb-backend.git
   ```
3. Install NPM packages in the frontend directory
   ```sh
   npm install
   ```
4. Install Gemfile packages in the backend directory
   ```sh
   bundle install
   ```
5. Start the rake server in the backend directory
   ```sh
   rake server
   ```
6. Start the App in the frontend directory
   ```sh
   npm start
   ```

<!-- USAGE EXAMPLES -->
## Usage

### Students Tab
In the Students Tab you can see all of your students. On each student you can assign them a locker, and also easily access their locker combination if they forget it! You can also add new students using the form at the top of the page, or delete a student that is no longer attending your school. 
<p align='center'>
  <img width='75%' src="https://user-images.githubusercontent.com/82396393/134093239-9996168c-43ca-4d84-98a0-4f47462bb416.gif"/>
</p>

### Music Library Tab
In the Music Library Tab you can see all of the pieces you have in your library. 
<p align='center'>
  <img width='75%' src="https://user-images.githubusercontent.com/82396393/134093303-25697d55-9ad7-40cc-bfa5-a7638be9500a.gif"/>
</p>

### Instrument Inventory Tab
In the Instrument Inventory Tab you can see information about the instruments in the school such as condition, brand, model, and serial number. 
<p align='center'>
  <img width='75%' src="https://user-images.githubusercontent.com/82396393/134093414-7b0bedda-64c2-4a36-ba2c-3ad71aaa6e4f.gif"/>
</p>

### Lockers Tab
In the Lockers Tab you see a full list of all the lockers in your room, and any students that are assigned to them. This can be another way to easily access locker information for a student. 
<p align='center'>
  <img width='75%' src="https://user-images.githubusercontent.com/82396393/134093497-07bc57f0-4d92-4b57-9d5b-601447a67eb3.gif"/>
</p>

<!-- ROADMAP -->
## Roadmap

I plan on refactoring this entire project in the future to implement a Ruby on Rails backend as opposed to a Sinatra backend. I also want to add user authentication for teachers to login and only see their students. 

<!-- CONTRIBUTING -->
## Contributing

Are you a teacher who also codes? Do you want to contribute to this open-source project with your own ideas? Are you interested in this app and want to make it even better? Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Add and Commit your Changes (`git commit -am 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- CONTACT -->
## Contact

Steve Vaughn - [GitHub](https://github.com/stevehvaughn) | [LinkedIn](https://www.linkedin.com/in/stevehvaughn/) | [Medium](https://stevehvaughn.medium.com/) | [Twitter](https://twitter.com/stevehvaughn) | [Email](steve.h.vaughn@gmail.com)

Project Link: [https://github.com/stevehvaughn/banddb-frontend]https://github.com/stevehvaughn/banddb-frontend) | [https://github.com/stevehvaughn/banddb-backend]https://github.com/stevehvaughn/banddb-backend)

<!-- ACKNOWLEDGEMENTS -->
