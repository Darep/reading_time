String.class_eval do
  def reading_time(opts = {})
    ReadingTime.parse(self, opts)
  end
end
