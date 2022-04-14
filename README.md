# Set up dev environment

- Install Ruby (e.g. see instructions in https://gorails.com/setup/osx/10.15-catalina)
- Install PostgreSQL (e.g. see instructions in https://gorails.com/setup/osx/10.15-catalina)
- Install Rails and dependencies. Run `bundle install` in project directory.
- Install Yarn.
- Install JS dependencies. Run `yarn install` in project directory.

# Set up database
- `bundle exec rails db:reset`
- `bundle exec rails db:fixtures:load`

# Run servers

- Run backend server: `rails s`
- Open `http://localhost:3000/` in a browser.

# Improve the web app

- Search for the word `TODO` within the project.
- Follow the instructions on the `TODO` and implement as many as you can.
- Improve the UI (padding, size, layout, etc).
  - Add some colors, but keep it simple and professional.
  - For color inspiration, you can follow other website's branding guidelines (e.g. https://www.ebaqdesign.com/blog/brand-guidelines). No need to make your own design.
- Improve any UX that is confusing and not user friendly.
- Also improve any code that is confusing and repetitive.
- But don't change the structure of the project. You can add new files, but make sure to follow the provided structure.

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
  - Make a PR (Pull Request) and add some screenshots of the new pages in the PR.
