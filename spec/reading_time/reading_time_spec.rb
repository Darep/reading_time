require 'spec_helper'

describe ReadingTime do
  describe '#parse' do
    it 'returns a Time object' do
      text = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'
      ReadingTime.parse(text).should be_a(ReadingTime::Time)
    end

    it 'should parse reading time for plain text with line endings' do
      text = "Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet.\n"
      ReadingTime.parse(text).seconds_total.should equal(3.0)
    end

    it 'should parse reading time for HTML' do
      html = '<p><strong>Lorem ipsum dolor sit amet.</strong></p>'
      html += '<p>Lorem <b>ipsum</b> dolor <em>sit amet.</em></p>'

      ReadingTime.parse(html).seconds_total.should equal(3.0)
    end
  end
end
