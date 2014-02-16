# Overview

[![Gem Version](https://badge.fury.io/rb/prawn_plus.png)](http://badge.fury.io/rb/prawn_plus)
[![Code Climate GPA](https://codeclimate.com/github/bkuhlmann/prawn_plus.png)](https://codeclimate.com/github/bkuhlmann/prawn_plus)
[![Gemnasium Status](https://gemnasium.com/bkuhlmann/prawn_plus.png)](https://gemnasium.com/bkuhlmann/prawn_plus)
[![Travis CI Status](https://secure.travis-ci.org/bkuhlmann/prawn_plus.png)](http://travis-ci.org/bkuhlmann/prawn_plus)

# Features

* Loads the [Prawn](https://github.com/prawnpdf/prawn) gem by default (no Gemfile entry necessary).
* Registers PDF as a MIME type.
* Registers a template handler for rendering ".prawn" template view files.

# Requirements

0. Any of the following Ruby VMs:
    * [MRI 2.x.x](http://www.ruby-lang.org)
    * [JRuby 1.x.x](http://jruby.org)
    * [Rubinius 2.x.x](http://rubini.us)
0. [Ruby on Rails 4.x.x](http://rubyonrails.org).
0. [Prawn](https://github.com/prawnpdf/prawn).

# Setup

For a secure install, type the following from the command line (recommended):

    gem cert --add <(curl -Ls http://www.redalchemist.com/gem-public.pem)
    gem install prawn_plus -P HighSecurity

...or, for an insecure install, type the following (not recommended):

    gem install prawn_plus

Add the following to your Gemfile:

    gem "prawn_plus"

# Usage

## Views

Within your views you can craft Prawn templates using Ruby code. For example, assuming there are document resources, then
the following structure might exist:

    /views/documents/show.html.erb
    /views/documents/show.pdf.prawn

The show.html.erb could have a link to the PDF download. Example:

    <%= link_to "PDF Download", action: "show", id: @document.id, format: "pdf" %>

The show.pdf.prawn file would contain the Prawn syntax for crafting the PDF. A simple example
might look like this:

    pdf.text "Hello, I'm a PDF!"

...which would render the following output:

[![Basic Example](https://github.com/bkuhlmann/prawn_plus/raw/master/doc/examples/basic.png)](https://github.com/bkuhlmann/prawn_plus)

You could also render a more complex PDF with tabular information, for example:

    pdf.text "Metals"
    pdf.move_down 10
    pdf.font_size = 10

    data = [
      ["Name", "Atomic Number", "Price"],
      ["Mercury", "80", number_to_currency(10)],
      ["Platinum", "78", number_to_currency(25)],
      ["Titanium", "22", number_to_currency(50)]
    ]

    pdf.table data, header: true, column_widths: [100, 50, 50], row_colors: ["FFFFFF", "E5ECF9"] do
      columns(0).align = :left
      columns(1..2).align = :right
      row(0).text_color = "FFFFFF"
      row(0).background_color = "000000"
      row(0).columns(0..2).font_style = :bold
      row(0).columns(0..2).align = :center
    end

...which would render the following output:

[![Complex Example](https://github.com/bkuhlmann/prawn_plus/raw/master/doc/examples/complex.png)](https://github.com/bkuhlmann/prawn_plus)

NOTE: The _pdf_ object must always be referenced when making using of the Prawn syntax - it is initialized for you
as a Prawn::Document instance.

## Controllers

Within your controller, only the respond_to method is required. Using the same example above, only the following
would be necessary:

    class DocumentsController < ApplicationController
      respond_to :pdf

      def show
      end
    end

That's it!

# Tests

To test, do the following:

0. cd to the gem root.
0. bundle install
0. bundle exec rspec spec

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

* Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
* Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
* Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Contributions

Read CONTRIBUTING for details.

# Credits

Developed by [Brooke Kuhlmann](http://www.redalchemist.com) at [Red Alchemist](http://www.redalchemist.com)

# License

Copyright (c) 2012 [Red Alchemist](http://www.redalchemist.com).
Read the LICENSE for details.

# History

Read the CHANGELOG for details.
Built with [Gemsmith](https://github.com/bkuhlmann/gemsmith).
