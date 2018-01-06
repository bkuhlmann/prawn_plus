# Prawn+

[![Gem Version](https://badge.fury.io/rb/prawn_plus.svg)](http://badge.fury.io/rb/prawn_plus)
[![Code Climate Maintainability](https://api.codeclimate.com/v1/badges/11437f0567f0cd96d04e/maintainability)](https://codeclimate.com/github/bkuhlmann/prawn_plus/maintainability)
[![Code Climate Test Coverage](https://api.codeclimate.com/v1/badges/11437f0567f0cd96d04e/test_coverage)](https://codeclimate.com/github/bkuhlmann/prawn_plus/test_coverage)
[![Gemnasium Status](https://gemnasium.com/bkuhlmann/prawn_plus.svg)](https://gemnasium.com/bkuhlmann/prawn_plus)
[![Circle CI Status](https://circleci.com/gh/bkuhlmann/prawn_plus.svg?style=svg)](https://circleci.com/gh/bkuhlmann/prawn_plus)

<!-- Tocer[start]: Auto-generated, don't remove. -->

## Table of Contents

  - [Features](#features)
  - [Requirements](#requirements)
  - [Setup](#setup)
  - [Usage](#usage)
    - [Views](#views)
    - [Controllers](#controllers)
  - [Tests](#tests)
  - [Versioning](#versioning)
  - [Code of Conduct](#code-of-conduct)
  - [Contributions](#contributions)
  - [License](#license)
  - [History](#history)
  - [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

## Features

- Loads the [Prawn](https://github.com/prawnpdf/prawn) gem by default (no Gemfile entry necessary).
- Registers PDF as a MIME type.
- Registers a template handler for rendering ".prawn" template view files.

## Requirements

0. [Ruby 2.5.x](https://www.ruby-lang.org).
0. [Ruby on Rails 5.x.x](http://rubyonrails.org).
0. [Prawn](https://github.com/prawnpdf/prawn).

## Setup

Type the following to install:

    gem install prawn_plus

Add the following to your Gemfile:

    gem "prawn_plus"

## Usage

### Views

Within your views you can craft Prawn templates using Ruby code. For example, assuming there are
document resources, then the following structure might exist:

    /views/documents/show.html.slim
    /views/documents/show.pdf.prawn

The `show.html.slim` could have a link to the PDF download. Example:

    = link_to "PDF Download", action: "show", id: @document.id, format: "pdf"

The `show.pdf.prawn` file would contain the Prawn syntax for crafting the PDF. A simple example
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

*NOTE: The `pdf` object must always be referenced when making using of the Prawn syntax - it is
initialized for you as a Prawn::Document instance.*

### Controllers

Within your controller, only the `respond_to` method is required. Example:

    class DocumentsController < ApplicationController
      respond_to :pdf

      def show
      end
    end

That's it!

## Tests

To test, run:

    bundle exec rake

## Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Major (X.y.z) - Incremented for any backwards incompatible public API changes.
- Minor (x.Y.z) - Incremented for new, backwards compatible, public API enhancements/fixes.
- Patch (x.y.Z) - Incremented for small, backwards compatible, bug fixes.

## Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By
participating in this project you agree to abide by its terms.

## Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

## License

Copyright 2012 [Alchemists](https://www.alchemists.io).
Read [LICENSE](LICENSE.md) for details.

## History

Read [CHANGES](CHANGES.md) for details.
Built with [Gemsmith](https://github.com/bkuhlmann/gemsmith).

## Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at
[Alchemists](https://www.alchemists.io).
