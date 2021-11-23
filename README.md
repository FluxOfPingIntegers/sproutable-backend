Sproutable API

This is a RESTful API serving JSON data to a web app frontend that can be found here:
https://github.com/FluxOfPingIntegers/sproutable-frontend eventually I have plans to make this into an ecommerce app.  Currently it serves JSON retrieved from both the USDAs Farmers Market API (https://search.ams.usda.gov/farmersmarkets/v1/svcdesc.html), and images from the Imsea API (https://imsea.herokuapp.com/).

Getting Started

Step 1: within your terminal inside the main branch for this project within VS code type 'bundle update' and press enter. Then type 'bundle install' and hit enter again.

Step 2: Again within your terminal inside the main branch for this project within VS code type 'rails db:seed' to populate your database, then 'rails s' to start this server on your local machine. To stop this process press CTRL+C. You will need to do this within your terminal whenever you wish to shut down your server as it does tend to run even when VS Code is exited.

Step 3: Go to the instructions found within https://github.com/FluxOfPingIntegers/sproutable-frontend to start utilizing this app.

Installation

First You will need developer software, I used Visual Studio Code. Depending on your operating system you should follow these instructions: Windows: https://code.visualstudio.com/docs/setup/windows macOS: https://code.visualstudio.com/docs/setup/mac Linux: https://code.visualstudio.com/docs/setup/linux

Second You will need a Ruby library on your machine. Within terminal please follow the instructions found here: https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/

Third You will need to clone the repo for this software and pull it up in VS Code. In your terminal please navigate to the folder you would like the files for this software to be and type "git clone git@github.com:FluxOfPingIntegers/sproutable-backend.git" then "cd sproutable-backend" then "code .".

Finally you are ready to proceed to the Getting Started section of this README

Contribute This is a project I am building for school (and for fun) and I am not currently looking for contributors. This may change in the future though!

Author

Ryan Schleck – Flatiron student Acknowledgments

• The very supportive slack community at Flatiron Tech/Gems used • Ruby • All Ruby gems can be found in the Gemfile

License

MIT License - Copyright 2021 Anyone Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.