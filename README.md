# Set up dev environment

- Install Ruby (e.g. see instructions in https://gorails.com/setup/osx/10.15-catalina)
- Install PostgreSQL (e.g. see instructions in https://gorails.com/setup/osx/10.15-catalina)
- Install Rails and dependencies. Run `bundle install` in project directory.

# Set up database
- `bundle exec rails db:reset`
- `bundle exec rails db:fixtures:load`

# Run servers

- Run backend server: `rails s`
- Open `http://localhost:3000/` in a browser.

# Improve the web app

- Search for the word `TODO` within the project
- Follow the instructions on the `TODO` and implement as many as you can
- Also fix any bug that you find
- Also improve any code that is confusing and repetitive
- UI is not important, no need to improve the UI.

# Submit your changes

- Clone this repository.
- Commit your changes.
  - Create a new branch.
  - Commit code that is logically related.
  - Don't put everything in one commit. It's hard to review the changes if a commit is too big.
- Push to your own repository.
  - Create a new repository on GitHub. Make sure the repository is private.
  - Push your branch.
  - Add me to your project. My GitHub username is: hgani
