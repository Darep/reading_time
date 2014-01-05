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

**TODO: Write usage instructions here!**

```ruby
> require 'reading_time'
> time = ReadingTime.parse('Lorem ipsum dolor sit amet, consectetur.')
> time.seconds
=> 1
> time.to_s
=> "1 second"
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

