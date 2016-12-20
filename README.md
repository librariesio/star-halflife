# Star Halflife &#127775;

Exploring how the value of GitHub stars decays over time

![Screenshot](https://cloud.githubusercontent.com/assets/1060/21371493/9ed7ecde-c709-11e6-8a64-77a0bfe99489.png)

## Why is this a thing?

I wanted to visualize the change and rate of change in star counts for projects on GitHub and see what happened if you reduced the value of a star from 1 to 0 as it reached 2 years old.

## What state is the project in right now?

The project is like a little baby. You have to host it yourself and it requires command line usage to download stars for a project.

Check out the open issues for a glimpse of the future: https://github.com/librariesio/star-halflife/issue.

## Development

The source code is hosted at [GitHub](https://github.com/librariesio/star-halflife).
You can report issues/feature requests on [GitHub Issues](https://github.com/librariesio/star-halflife/issues).
For other updates, follow us on Twitter: [@librariesio](https://twitter.com/librariesio).

### Getting Started

New to Ruby? No worries! You can follow these instructions to install a local server, or you can use the included [Vagrant](https://www.vagrantup.com/docs/why-vagrant/) setup.

#### Installing a Local Server

First things first, you'll need to install Ruby 2.3.3. I recommend using the excellent [rbenv](https://github.com/rbenv/rbenv),
and [ruby-build](https://github.com/rbenv/ruby-build):

```bash
brew install rbenv ruby-build
rbenv install 2.3.3
rbenv global 2.3.3
```

Next, you'll need to make sure that you have PostgreSQL installed. This can be
done easily on OSX using [Homebrew](http://mxcl.github.io/homebrew/) or by using [http://postgresapp.com](http://postgresapp.com). Please see these [further instructions for installing Postgres via Homebrew](http://www.mikeball.us/blog/setting-up-postgres-with-homebrew/).

```bash
brew install postgres
```

On Debian-based Linux distributions you can use apt-get to install Postgres:

```bash
sudo apt-get install postgresql postgresql-contrib libpq-dev
```

Now, let's install the gems from the `Gemfile` ("Gems" are synonymous with libraries in other
languages):

```bash
gem install bundler && rbenv rehash
bundle install
```

Once all the gems are installed, we'll need to create the databases and
tables. Rails makes this easy through the use of "Rake" tasks:

```bash
bundle exec rake db:create db:migrate
```

Now go and create a [personal access token](https://github.com/settings/tokens) on GitHub with the `notifications` scope enabled and add it to `.env`:

```
GITHUB_TOKEN=yourgithubtokenhere
```

Finally you can boot the rails app:

```bash
rails s
```

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so we don't break it in a future version unintentionally.
 * Send a pull request. Bonus points for topic branches.

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## Copyright

Copyright (c) 2016 Andrew Nesbitt. See [LICENSE](https://github.com/librariesio/star-halflife/blob/master/LICENSE.txt) for details.
