# v7.2.0 (2017-01-22)

- Updated Rubocop Metrics/LineLength to 100 characters.
- Updated Rubocop Metrics/ParameterLists max to three.
- Updated Travis CI configuration to use latest RubyGems version.
- Updated gemspec to require Ruby 2.4.0 or higher.
- Updated to Rubocop 0.47.
- Updated to Ruby 2.4.0.
- Removed Rubocop Style/Documentation check.

# v7.1.0 (2016-12-18)

- Fixed Rakefile support for RSpec, Reek, Rubocop, and SCSS Lint.
- Updated Travis CI configuration to use defaults.
- Updated to Gemsmith 8.2.x.
- Updated to Rake 12.x.x.
- Updated to Rubocop 0.46.x.
- Updated to Ruby 2.3.2.
- Updated to Ruby 2.3.3.

# v7.0.0 (2016-11-14)

- Fixed Rakefile to safely load Gemsmith tasks.
- Fixed contributing guideline links.
- Added "pg" gem development dependency.
- Added Code Climate engine support.
- Added GitHub issue and pull request templates.
- Added IRB development console Rake task support.
- Added Reek support.
- Added Rubocop Style/SignalException cop style.
- Added Ruby 2.3.0 frozen string literal support.
- Added Travis CI PostgreSQL setup.
- Added `Gemfile.lock` to `.gitignore`.
- Added bond, wirb, hirb, and awesome_print development dependencies.
- Added frozen string literal pragma.
- Updated GitHub issue and pull request templates.
- Updated README secure gem install documentation.
- Updated README to mention "Ruby" instead of "MRI".
- Updated README versioning documentation.
- Updated RSpec temp directory to use Bundler root path.
- Updated Rubocop PercentLiteralDelimiters and AndOr styles.
- Updated dummy application to a Rails 5 application.
- Updated gem dependencies.
- Updated gemspec with conservative versions.
- Updated to Code Climate Test Reporter 1.0.0.
- Updated to Code of Conduct, Version 1.4.0.
- Updated to Gemsmith 7.7.0.
- Updated to Rails 5.0.0.
- Updated to Rubocop 0.44.
- Updated to Ruby 2.2.4.
- Updated to Ruby 2.3.0.
- Updated to Ruby 2.3.1.
- Removed CHANGELOG.md (use CHANGES.md instead).
- Removed RSpec default monkey patching behavior.
- Removed Rake console task.
- Removed Ruby 2.1.x and 2.2.x support.
- Removed gemspec description.
- Removed legacy dummy application.
- Removed rb-fsevent development dependency from gemspec.
- Removed terminal notifier gems from gemspec.
- Removed unused "vendor" folder from gemspec.
- Refactored RSpec spec helper configuration.
- Refactored gemspec to use default security keys.
- Refactored version label method name.

# v6.3.0 (2015-12-02)

- Fixed README URLs to use HTTPS schemes where possible.
- Fixed README test command instructions.
- Added Gemsmith development support.
- Added Identity module description.
- Added Patreon badge to README.
- Added Rubocop support.
- Added [pry-state](https://github.com/SudhagarS/pry-state) support.
- Added project name to README.
- Added table of contents to README.
- Updated Code Climate to run when CI ENV is set.
- Updated Code of Conduct 1.3.0.
- Updated README with Tocer generated Table of Contents.
- Updated RSpec support kit with new Gemsmith changes.
- Updated to Ruby 2.2.3.
- Updated README with SVG icons.
- Removed GitTip badge from README.
- Removed unnecessary exclusions from .gitignore.

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
