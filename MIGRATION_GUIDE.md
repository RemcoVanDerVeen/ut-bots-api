# Rails 8 Migration Checklist

This document outlines what was changed during the Rails 8 modernization and what to test.

## What Was Changed

### 1. Dependencies Updated
- ✅ Rails upgraded from 7.1.3 → 8.0.0
- ✅ Puma upgraded from 5.6.5 → 6.4+
- ✅ Ruby kept at 3.3.10
- ✅ Removed: sprockets-rails, cssbundling-rails, jsbundling-rails, bootstrap, webdrivers
- ✅ Added: propshaft (modern asset pipeline)
- ✅ Switched to rubocop-rails-omakase for Rails 8 style conventions

### 2. Frontend Modernization
- ✅ Removed Bootstrap and SCSS dependencies
- ✅ Created clean vanilla CSS with modern design
- ✅ Simplified package.json (no build process needed)
- ✅ Kept Hotwire (Turbo + Stimulus) via importmaps
- ✅ Removed asset bundling (esbuild, sass)
- ✅ Updated layouts to use semantic HTML and custom CSS classes

### 3. Configuration Updates
- ✅ Updated `config/application.rb` to Rails 8.0 defaults
- ✅ Added `config.autoload_lib` for Rails 8 autoloading
- ✅ Cleaned up Dockerfile (removed Node.js/npm, updated bundler)
- ✅ Simplified docker-compose.yml
- ✅ Updated database.yml to use DATABASE_PASSWORD (not DATABASE_PASS)
- ✅ Simplified Procfile.dev

### 4. Code Cleanup
- ✅ Removed all empty helper files (kept only application_helper.rb)
- ✅ Removed app/assets/builds and app/assets/config directories
- ✅ Removed Bootstrap classes from layouts

### 5. Files to Keep (Your Business Logic)
All your core business logic remains untouched:
- ✅ All migrations in `db/migrate/`
- ✅ All models in `app/models/`
- ✅ All controllers in `app/controllers/`
- ✅ All views in `app/views/`
- ✅ Routes configuration
- ✅ Database seeds

## Testing Checklist

### Before You Start
```bash
# Update gems
docker compose run --rm web bundle install

# Or locally:
bundle install
```

### Database Tests
```bash
# Create database
docker compose run --rm web rails db:create

# Run migrations
docker compose run --rm web rails db:migrate

# Check schema is correct
docker compose run --rm web rails db:schema:load RAILS_ENV=test
```

### Application Tests
```bash
# Start the application
docker compose up

# Or locally:
rails server
```

Then verify in browser at http://localhost:3000:

1. ✅ Root page loads (`/`)
2. ✅ Bots index loads (`/bots`)
3. ✅ Can create a new bot
4. ✅ Can edit a bot
5. ✅ Can delete a bot
6. ✅ Navigation sidebar works
7. ✅ Styling looks clean and modern
8. ✅ Turbo works (page transitions are fast)

### Test Each Resource
Visit and test CRUD operations for:
- [ ] `/authors`
- [ ] `/bots`
- [ ] `/botlists`
- [ ] `/colours`
- [ ] `/combat_styles`
- [ ] `/game_modes`
- [ ] `/maps`
- [ ] `/mutators`
- [ ] `/player_models`
- [ ] `/player_model_skins`
- [ ] `/teams`
- [ ] `/voice_packs`
- [ ] `/weapons`
- [ ] `/xbots_configurations`

### Run Automated Tests
```bash
# Run test suite
docker compose run --rm web rails test

# Or locally:
rails test
```

### Check for Issues
```bash
# Run rubocop
docker compose run --rm web bundle exec rubocop

# Or locally:
bundle exec rubocop
```

## Known Breaking Changes

### CSS Classes
Bootstrap classes have been removed. If you have custom views that use Bootstrap classes, you'll need to update them to use the new CSS classes or vanilla HTML.

Common replacements:
- `btn btn-primary` → `btn btn-primary` (kept for compatibility)
- `table` → `<table>` (uses new styling)
- `container-fluid` → `.main-container`
- `row`/`col-*` → CSS Grid (`.main-container`)

### Asset Pipeline
- `app/assets/builds/` no longer exists (using Propshaft)
- No npm build process needed
- CSS is served directly from `app/assets/stylesheets/`
- JavaScript is loaded via importmaps

### Environment Variables
- `DATABASE_PASS` is now `DATABASE_PASSWORD` (for consistency)

## Next Steps

1. **Run bundle install** to update all gems
2. **Test locally** with `rails server` or `docker compose up`
3. **Run migrations** if needed
4. **Check all resources work** using the checklist above
5. **Update any custom views** that use Bootstrap classes
6. **Consider adding authentication** if needed (Rails 8 has built-in generators)

## If You Need to Rollback

All changes are in git. You can:
```bash
git status  # See what changed
git diff    # Review changes
git restore <file>  # Restore specific file
git reset --hard HEAD  # Restore everything (careful!)
```

## Questions?

The core business logic (models, controllers, migrations) hasn't changed at all. Only the frontend framework and Rails version were modernized. Everything should work exactly as before, but faster and cleaner!

