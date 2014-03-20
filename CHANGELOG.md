# v4.0.0

* Updated to Prawn 1.0.0.
* Updated to MRI 2.1.1.
* Updated to Rubinius 2.x.x support.
* Updated gemspec to lock the sqlite3 gem at v1.3.8 for Rubinius.
* Added Gemnasium support.
* Added Coveralls support.

# v3.2.0

* Updated gemspec homepage URL to use GitHub project URL.
* Added JRuby and Rubinius VM support.

# v3.1.0

* Fixed Ruby Gem certificate requirements for package building.
* Fixed RSpec deprecation warnings for treating metadata symbol keys as true values.
* Fixed Travis CI builds by adding a before_install script for the minitest gem.
* Removed UTF-8 encoding definitions - This is the default in Ruby 2.x.x.
* Removed .ruby-version from .gitignore.
* Removed Gemfile.lock from .gitignore.
* Updated public gem certificate to be referenced from a central server.
* Updated to Ruby 2.1.0.
* Added Pry plugin requirements to RSpec spec helper.

# v3.0.0

* Upgraded to Rails 4.0.0.
* Treat symbols and true values by default when running RSpec specs.
* Added .ruby-version support.
* Added pry-rescue support.
* Removed the CHANGELOG documentation from gem install.
* Added a Versioning section to the README.
* Converted from RDoc to Markdown documentation.
* Added public cert for secure install of gem.
* Switched from the pry-debugger to pry-byebug gem.
* Ignore the signing of a gem when building in a Travis CI environment.
* Added dummy documents controller, views, and routes for testing purposes.

# v2.0.0

* Upgraded to Ruby 2.0.0.
* Converted/detailed the CONTRIBUTING guidelines per GitHub requirements.
* Added Gem Badge support.
* Added Code Climate support.
* Added Campfire notification support.
* Switched from HTTP to HTTPS when sourcing from RubyGems.
* Added Pry development support.
* Added 'tmp' directory to .gitignore.
* Cleaned up requirement path syntax.

# v1.0.0

* Initial version.
