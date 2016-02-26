require 'reading_time/version'
require 'reading_time/core_ext'
require 'reading_time/time'

require 'sanitize'

module ReadingTime
  AVG_WORDS_PER_MIN = 200
  ACCURACY_IN_SECONDS = 5

  def self.word_count(text)
    words(text).count
  end

  def self.parse(text, opts = {})
    avg_words_per_min = opts[:words_per_min] || AVG_WORDS_PER_MIN

    if opts[:format] and not opts[:format].is_a? String
      raise '"format" is not a String'
    end

    minutes = self.word_count(text).to_f / avg_words_per_min

    Time.new(minutes)
  end

  private

    def self.plain_text(text)
      # Remove all the HTML
      Sanitize.clean(text)
    end

    def self.trim(minutes)
      # TODO: implement this
      accuracy = opts[:accuracy] || ACCURACY_IN_SECONDS
    end

    def self.words(text)
      self.plain_text(text).split
    end

end
