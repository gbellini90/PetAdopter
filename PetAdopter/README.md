# PetAdopter Backend README

## Project Overview

Pet Adopter is an app to view, save and adopt animals from local NYC shelters and adoption centers. Users can sign up and sign back in to view all available pets, with photos and details, and add pets to their “pet list”. When a user visits their pet list, they have the option to adopt any pets that they have added. If a user has a pet saved in their list and someone else adopts it, a user can obviously no longer adopt, but can remove that pet from their list, either from the main page or from their profile. Once a pet is adopted, there is no un-adopting — you are committing to save that animal! :clap::skin-tone-3:

## Technologies Used

React, Ruby on Rails (Rails API backend), Petfinder API, HTML, CSS, JSON, Semantic UI & GoogleFonts, ActiveModel Serializers, ‘dotenv-rails’ and other Ruby gems

## Getting Started

### Prerequisites
To use, clone down this repo and open with your preferred text editor. This project uses Ruby on Rails, so you’ll need to make sure you have both installed (if you don’t, visit this link for instructions: Digital Ocean: Install Ruby and Set Up Local Environment) as well as PostgreSQL as the database resource.

Because the backend pulls data from the PetFinder API, you will also need to obtain an API key. Head to https://www.petfinder.com//developers/api-key to login or signup with account credentials and from there you’ll be able to request an API Key. It shouldn’t take long to receive an email containing your key, a few hours tops so keep an eye out.

### Installing
The project gemfile specifies Ruby 2.6.0, but was created with 2.3.3 so make sure you have Ruby 2.3.3 or higher. If there are any issues, just install latest version of Ruby, update your gemfile, open terminal and in the root of the project directory run:

`bundle install`
or simply
`bundle`

to install gem dependencies. Once that completes successfully, run:

`rake db: create && rake db:migrate`

to facilitate backend set up. You can then:

`rails c`

and jump into the console to test out that tables and relationships were established correctly, that class instances can be created and related successfully, etc. To successfully hide your API Key, create a .env file and save your key as:

`API_KEY=your-api-key-goes-here`

For further information, the full dotenv-rails documentation can be found here: https://www.rubydoc.info/gems/dotenv-rails/2.1.1. **Make sure to add .env to your .gitignore file**, then run:

`rails db:seed`

to create a list of adoptable pets. If the development database is running correctly, then the seed data should be successfully created and final step is to test the server. To activate it, run:

`rails s`

and once the terminal says it’s running, navigate to http://localhost:3000. If there’s  “Yay! You’re on Rails!” welcome page, then you can go to http://localhost:3000/api/v1/pets to check that all the data is being rendered properly. If so, it’s time for the frontend (link below). :call_me_hand::skin-tone-3:

## Frontend Link

[PetAdopter-frontend](https://github.com/gbellini90/PetAdopterFrontEnd)

## Demo Video

[PetAdopter.mov](https://drive.google.com/open?id=1D7FHcEtkCZXcCac5FGkyiHY7tLE1dS-v)

## Authors

**Gabrielle  Bellini**

≫ gbellini90@gmail.com<br/>
↳ *LinkedIn*: https://www.linkedin.com/in/gabrielle-bellini/<br/>
↳ *GitHub*: https://github.com/gbellini90<br/>
↳ *Blog*: https://medium.com/@gbellini90

**Hamilton Hudson**

≫ ehamiltonhudson@gmail.com<br/>
↳ *LinkedIn*: https://www.linkedin.com/in/hamiltonhudson<br/>
↳ *Website*: https://hamiltonhudson.myportfolio.com<br/>
↳ *Blog*: https://ehhudson.wordpress.com<br/>
↳ *Twitter*: https://twitter.com/HamiltonHudson

## License

This project is licensed under the MIT License - see the [LICENSE.md](/LICENSE) file for details.
