# ReadingTime

Ruby gem for estimating the reading time of text marked in HTML or just plain text.

## Installation

Add this line to your Gemfile:

    gem 'reading_time'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reading_time

## Usage

Use the `reading_time` method of a String:

```ruby
require 'reading_time'
"Sed posuere consectetur est at lobortis.".reading_time.to_s
 => "1 second"
```

Or you can call the `ReadingTime.parse`:

```ruby
require 'reading_time'
time = ReadingTime.parse('Lorem ipsum dolor sit amet, consectetur.')
 => #<ReadingTime::Time:0x007fb2d7d402b0 @minutes_total=0.03, @seconds_total=1.7999999999999998, @minutes=0, @seconds=1> 
time.seconds
 => 1
time.to_s
 => "1 second"
```

`ReadingTime.parse` returns a simple time span wrapper class called `ReadingTime::Time`, which has the following methods:

```ruby
time = Time.new(1.5)  # initialize(minutes_total)
time.seconds_total  # float  Total length of time in seconds (float)
time.minutes_total  # float  Total length of time in minutes (float)
time.seconds        # integer  Seconds unit; for printing the time
time.minutes        # integer  Minutes unit; for printing the time
time.to_s           # string  Opinionated representation of the time span
```

## Todo

- Parse reading time from Markdown marked text
- I18n
- Custom `to_s` formatting for `ReadingTime::Time`

## Contributing

Contributions are most welcome! And well-tested and documented contributions are
more welcome than others ;)

1. [Fork the repository][fork]
2. [Create a branch][branch] (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create a pull request][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

