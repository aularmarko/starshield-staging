# Starshield :star:

## Dependencies
- Ruby 3.0.1
- Rails 6

## Initial setup
1. Install ruby dependencies: `bundle install`
2. Create database: `rails db:create`
3. Restore starshield database from the latest dump: [Notion link](https://www.notion.so/Database-356396c5587840a6ad7818b674bb5654)
4. Run migrations: `rails db:migrate`
5. Configure git hooks: `git config core.hooksPath .git-hooks`

## Running the server locally

```
rails s
open http://localhost:3000
```

## Naming conventions
* **Branch**:
    * fix/branch-name
    * chore/branch-name
    * refactor/branch-name
    * feature/branch-name