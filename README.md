# The Gossip Project

A simple gossip-sharing web application built with Sinatra and Ruby.

## Description

The Gossip Project is a web application where users can create and share gossips (rumors/stories) about their peers. The application allows users to:
- View all gossips on the homepage
- Create new gossips through a form
- View individual gossip details on dedicated pages

This project demonstrates fundamental web development concepts including MVC architecture, routing, form handling, and CSV-based data persistence.

## Features

- **Homepage (Index)**: Displays a list of all gossips with links to individual pages
- **Create Gossip**: Form-based interface to submit new gossips
- **Show Gossip**: Individual page for each gossip displaying author and content
- **CSV Database**: All gossips are stored in a CSV file for data persistence

## Tech Stack

- **Ruby** 3.4.2
- **Sinatra** - Lightweight web framework
- **CSV** - Data storage
- **ERB** - Templating engine

## Project Structure

```
the_gossip_project_sinatra/
├── Gemfile
├── Gemfile.lock
├── config.ru
├── db/
│   └── gossip.csv
└── lib/
    ├── controller.rb
    ├── gossip.rb
    └── views/
        ├── index.erb
        ├── new_gossip.erb
        └── show.erb
```

## Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   bundle install
   ```

3. Create the database directory and CSV file:
   ```bash
   mkdir db
   touch db/gossip.csv
   ```

## Usage

1. Start the server:
   ```bash
   rackup -p 4567
   ```
   
   Or with auto-reload:
   ```bash
   rerun rackup -p 4567
   ```

2. Open your browser and navigate to:
   ```
   http://localhost:4567
   ```

## Routes

- `GET /` - Homepage displaying all gossips
- `GET /gossips/new/` - Form to create a new gossip
- `POST /gossips/new/` - Submit a new gossip
- `GET /gossips/:id/` - View a specific gossip

## Data Model

The `Gossip` class includes:
- **Attributes**: `author`, `content`
- **Instance Methods**: `#save` - Saves gossip to CSV
- **Class Methods**: 
  - `Gossip.all` - Returns all gossips as an array
  - `Gossip.find(id)` - Returns a specific gossip by ID

## Future Improvements

- Add gossip editing functionality
- Implement gossip deletion
- Add timestamps
- Migrate from CSV to a proper database (SQL)
- Add user authentication
- Improve styling with CSS

## Author

Built as part of The Hacking Project curriculum

## License

This project is open source and available for educational purposes.