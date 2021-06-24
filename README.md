![](https://img.shields.io/badge/Microverse-blueviolet)

# Tic-Tac-Toe

This is the implementation of the popular TIC-TAC-TOE Game created using the Ruby programming Language

Game Rules
* Each player is going to choose a number out of 9 positions.
* First player should enter his name and press enter.
* Second player should enter his name and press enter.
* First player should enter his symbol [X or O] and press enter.
* To choose a position you have to type the corresponding number and press enter.
* The game will check if the chosen number is valid or not valid.
* If it's not valid (i.e already taken number or not of the game positions - from 1 to 9 ) it will ask for another input.
* If it's valid it will display the board with the chosen position replaced by the symbol of the player [X, O].
* Then it will ask the next player to take turn.
* It will repeate the same for the second player.
* The game continues till it reaches either winning or draw conditions.

Winning conditions
We have 8 winning conditions...

* First three, to have occupied a full row with the same symbol [X, O]
* Second three, to have occupied a column with same symbol [X, O]
* Last two, to have occupied a full diagonal with same symbol [X, O]

Draw condition
* If 9 movements made with no winner then the game is a draw.


## Built With:

* Ruby
* RSpec


## Getting Started

To get your own copy of our project simply clone the repository to your local machine.

* Clone this repo on your local machine by running `git clone https://github.com/German-Cobian/Tic-Tac-Toe`
* `cd` into the `Tic-Tac-Toe` folder
* Run `ruby main.rb`
* Run the program from command line following the prompts it supplies


## Testing with RSpec 

This project is tested with RSpec which is a computer domain-specific language (DSL) testing tool written in the Ruby programming language.

![screenshot](images/testing.png)


### How to get Rspec Running 

* Run the following command in the terminal `gem install rspec` This command installs Rspec on your computer.
* Ensure that Rspec is installed by running the following command to see the installed version `rspec --version`
* You should get output similar to the following:
  ```
  RSpec 3.10
    - rspec-core 3.10.1
    - rspec-expectations 3.10.1
    - rspec-mocks 3.10.2
    - rspec-support 3.10.2
  ```
* The rspec gem comes packed with all we need to get started including the 5 gems listed above.
* Run the following command to initialize RSpec `rspec --init` This generates a /spec folder and a .rspec file at the root of your project
* Finally, to run the tests, simply run `rspec`


## Authors

👤 **Mih Julius Ndim**

* GitHub: [@Mihndim2020](https://github.com/mihndim2020)
* Linkedin: [Mih Julius](https://www.linkedin.com/in/mih-julius)
* Twiter: [@mihndim](https://twitter.com/mihndim)

👤 **German Cobian**

* GitHub: [@German-Cobian](https://github.com/German-Cobian)
* Twitter: [@German-Cobian1](https://twitter.com/GermanCobian1)
* LinkedIn: [@german-cobian](https://linkedin.com/german-cobian)

👤 **Charles Chukwunweike Eneh*
* GitHub: [@charlyeneh](https://github.com/charlyeneh)
* Twitter: [@twitterhandle](https://twitter.com/ProgrammerBaby?s=09)
* LinkedIn: [LinkedIn](https://www.linkedin.com/in/charles-chukwunweike-eneh-5345a2147)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support
 
Give a ⭐️ if you like this project!


## Acknowledgements

Guidelines for this project provided by [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/tic-tac-toe)


## 📝 License

This project is [MIT](https://github.com/German-Cobian/New-York-Times-Page-Clone/blob/main/LICENSE) licensed.
