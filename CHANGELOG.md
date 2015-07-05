# v6.2.0 (2015-07-05)

- Removed JRuby support (no longer officially supported).
- Fixed secure gem installs (new cert has 10 year lifespan).
- Updated to Ruby 2.2.2.
- Added code of conduct documentation.

# v6.1.0 (2015-03-01)

- Updated to Prawn 2.0.0.

# v6.0.0 (2015-01-01)

- Removed Ruby 2.0.0 support.
- Removed Rubinius support.
- Updated gemspec to add security keys unless in a CI environment.
- Updated Code Climate to run only if environment variable is present.
- Updated gemspec to use RUBY_GEM_SECURITY env var for gem certs.
- Added Ruby 2.2.0 support.
- Added Rails 4.2.x support.
- Added JRuby 2.x.x syntax support for Travis CI builds.
- Refactored common RSpec configurations to RSpec support/kit folder.

# v5.0.0 (2014-07-27)

- Removed Rails 4.0.x support.
- Updated to Prawn 1.2.x (see [CHANGELOG](https://github.com/prawnpdf/prawn/wiki/CHANGELOG#prawn-121--20140727) for
  details) and added prawn-table support.

# v4.2.0 (2014-07-06)

- Fixed bug with Prawn table support missing (not being required).
- Added Code Climate test coverage support.
- Updated to Ruby 2.1.2.
- Updated gem-public.pem for gem install certificate chain.

# v4.1.0 (2014-04-16)

- Updated RSpec helper to disable GC for all specs in order to improve performance.
- Added Rails 4.1.x support.

# v4.0.0 (2014-03-19)

- Updated to Prawn 1.0.0.
- Updated to MRI 2.1.1.
- Updated to Rubinius 2.x.x support.
- Updated gemspec to lock the sqlite3 gem at v1.3.8 for Rubinius.
- Added Gemnasium support.
- Added Coveralls support.

# v3.2.0 (2014-02-15)

- Updated gemspec homepage URL to use GitHub project URL.
- Added JRuby and Rubinius VM support.

# v3.1.0 (2013-12-29)

- Fixed Ruby Gem certificate requirements for package building.
- Fixed RSpec deprecation warnings for treating metadata symbol keys as true values.
- Fixed Travis CI builds by adding a before_install script for the minitest gem.
- Removed UTF-8 encoding definitions - This is the default in Ruby 2.x.x.
- Removed .ruby-version from .gitignore.
- Removed Gemfile.lock from .gitignore.
- Updated public gem certificate to be referenced from a central server.
- Updated to Ruby 2.1.0.
- Added Pry plugin requirements to RSpec spec helper.

# v3.0.0 (2013-08-12)

- Upgraded to Rails 4.0.0.
- Treat symbols and true values by default when running RSpec specs.
- Added .ruby-version support.
- Added pry-rescue support.
- Removed the CHANGELOG documentation from gem install.
- Added a Versioning section to the README.
- Converted from RDoc to Markdown documentation.
- Added public cert for secure install of gem.
- Switched from the pry-debugger to pry-byebug gem.
- Ignore the signing of a gem when building in a Travis CI environment.
- Added dummy documents controller, views, and routes for testing purposes.

# v2.0.0 (2013-03-24)

- Upgraded to Ruby 2.0.0.
- Converted/detailed the CONTRIBUTING guidelines per GitHub requirements.
- Added Gem Badge support.
- Added Code Climate support.
- Added Campfire notification support.
- Switched from HTTP to HTTPS when sourcing from RubyGems.
- Added Pry development support.
- Added 'tmp' directory to .gitignore.
- Cleaned up requirement path syntax.

# v1.0.0 (2012-05-26)

- Initial version.
