# Redmine Sidekiq plugin

[![Build Status](https://travis-ci.org/Undev/redmine_sidekiq.png?branch=master)](https://travis-ci.org/Undev/redmine_sidekiq)
[![Code Climate](https://codeclimate.com/github/Undev/redmine_sidekiq.png)](https://codeclimate.com/github/Undev/redmine_sidekiq)

Background jobs for Redmine

## Description

todo

## Requirements

Redis 2.4 or greater is required.

## Install

1. Copy plugin directory into REDMINE_ROOT/plugins.
If you are downloading the plugin directly from GitHub,
you can do so by changing into your REDMINE_ROOT directory and issuing a command like

        git clone https://github.com/Undev/redmine_sidekiq.git plugins/redmine_sidekiq
        bundle install

2. If you want to fine tuning sidekiq then you can add configuration [sidekiq.yml](https://github.com/mperham/sidekiq/wiki/Advanced-Options#wiki-the-sidekiq-configuration-file) to REDMINE_ROOT/config
3. Restart Redmine
4. Run sidekiq server from REDMINE_ROOT directory

        bundle exec sidekiq

And if you using custom configuration for sidekiq then pass path to it

        bundle exec sidekiq sidekiq --config ./config/sidekiq.yml

## Usage



## Links

- http://www.redmine.org/
- http://sidekiq.org/
- https://github.com/mperham/sidekiq/wiki

## License

Copyright (C) 2014 Undev.ru

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
