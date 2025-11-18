# UT Bots API

A modern Rails 8 application for managing Unreal Tournament bot configurations, including bot profiles, teams, player models, and game settings.

## Tech Stack

- **Ruby** 3.3.10
- **Rails** 8.0
- **PostgreSQL** 17
- **Hotwire** (Turbo + Stimulus)
- **Propshaft** (Modern asset pipeline)
- **Importmaps** (No npm build step needed)

## Getting Started

### Prerequisites

- Docker & Docker Compose
- (Or) Ruby 3.3.10 and PostgreSQL 17

### Setup with Docker (Recommended)

```bash
docker compose build --no-cache
docker compose run --rm utbots bundle install
docker compose run --rm utbots bundle exec rails db:setup
docker compose up
```

The application will be available at `http://localhost:3000`

### Local Development (Without Docker)

1. **Install dependencies:**

```bash
bundle install
```

2. **Setup database:**

```bash
rails db:create db:migrate db:seed
```

3. **Start the server:**

```bash
rails server
```

## Database Configuration

The application uses PostgreSQL. Database configuration is managed via environment variables:

- `DATABASE_HOST` - PostgreSQL host (default: localhost)
- `DATABASE_USER` - Database user (default: postgres)
- `DATABASE_PASSWORD` - Database password
- `DATABASE_NAME` - Database name

## Project Structure

This is a barebones Rails 8 application with:

- **Models**: Complete data models for UT bots, teams, configurations
- **Migrations**: All database schema definitions
- **Controllers**: RESTful resource controllers
- **Views**: Server-rendered ERB templates
- **Hotwire**: Modern SPA-like experience without JavaScript frameworks
- **Vanilla CSS**: Clean, modern styling without heavy CSS frameworks

## Available Resources

The API manages the following resources:

- **Bots** - Individual bot configurations
- **Teams** - Bot team compositions
- **Authors** - Bot creators
- **Combat Styles** - Fighting behavior patterns
- **Player Models** - Character models
- **Voice Packs** - Bot voice audio
- **Weapons** - Weapon configurations
- **Maps** - Game map settings
- **Game Modes** - Game type configurations
- **Mutators** - Game modifiers
- **Colours** - Team color settings
- **XBots Configurations** - Extended bot configurations

## License

This project is open source and available under the [MIT License](LICENSE).
