# Sproutable API

This is a RESTful API serving JSON data to a web app frontend that can be found [here](https://github.com/FluxOfPingIntegers/sproutable-frontend) eventually I have plans to make this into an ecommerce app.  Currently it serves JSON retrieved from both the [USDAs Farmers Market API](https://search.ams.usda.gov/farmersmarkets/v1/svcdesc.html), and images from the [Imsea](https://imsea.herokuapp.com/) API.

## Getting Started

• Step 1: within your terminal inside the main branch for this project within VS code type
```bash
bundle update
```
and press enter. Then type
```bash
bundle install
```
and hit enter again.

• Step 2: Again within your terminal inside the main branch for this project within VS code type
```bash
rails db:seed
```
to populate your database, then
```bash
rails s 
```
to start this server on your local machine. To stop this process press CTRL+C. You will need to do this within your terminal whenever you wish to shut down your server as it does tend to run even when VS Code is exited.

• Step 3: Go to the instructions found [here](https://github.com/FluxOfPingIntegers/sproutable-frontend) to start utilizing this app.

## Installation

• First You will need developer software, I used Visual Studio Code. Depending on your operating system you should follow these instructions: [Windows](https://code.visualstudio.com/docs/setup/windows) -OR- [macOS](https://code.visualstudio.com/docs/setup/mac) -OR- [Linux](https://code.visualstudio.com/docs/setup/linux)

• Second You will need a Ruby library on your machine. Within terminal please follow the instructions found [here](https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/)

• Third You will need to clone the repo for this software and pull it up in VS Code. In your terminal please navigate to the folder you would like the files for this software to be and type 
```bash
git clone git@github.com:FluxOfPingIntegers/sproutable-backend.git
```
then navigate to the folder you just created by typing
```bash
cd sproutable-backend
```
then fire up VS code by entering
```bash
code .
```
• Finally you are ready to proceed to the Getting Started section of this README

## Contribute
This is a project I am building for school (and for fun) and I am not currently looking for contributors. This may change in the future though!

## Author

Ryan Schleck – Flatiron student Acknowledgments

• The very supportive slack community at Flatiron Tech/Gems used • Ruby • All Ruby gems can be found in the Gemfile

## License

[MIT](https://choosealicense.com/licenses/mit/)