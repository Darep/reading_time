require 'reading_time/version'
require 'reading_time/core_ext'
require 'reading_time/time'

require 'sanitize'

module ReadingTime
  AVG_WORDS_PER_MIN = 200
  ACCURACY_IN_SECONDS = 5

  def self.parse(text, opts = {})
    if opts[:format] and not opts[:format].is_a? String
      raise '"format" is not a String'
    end

    avg_words_per_min = opts[:words_per_min] || AVG_WORDS_PER_MIN
    minutes_total = self.count_words(text).to_f / avg_words_per_min

    Time.new(minutes_total)
  end

  private

    def self.count_words(text)
      self.plain_text(text).split.count
    end

    def self.plain_text(text)
      # Remove all the HTML
      Sanitize.clean(text)
    end

    def self.trim(minutes)
      # TODO: implement this
      accuracy = opts[:accuracy] || ACCURACY_IN_SECONDS
    end

end