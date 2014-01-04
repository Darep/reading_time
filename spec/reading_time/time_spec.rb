require 'spec_helper'

describe ReadingTime::Time do
  before(:each) do
    @time = ReadingTime::Time.new(1.59)
  end

  it 'knows total minutes' do
    @time.minutes_total.should equal(1.59)
  end

  it 'knows total seconds' do
    @time.seconds_total.should equal(95.4)
  end

  it 'knows the minutes unit' do
    @time.minutes.should equal(1)
  end

  it 'knows the seconds unit' do
    @time.seconds.should equal(35)
  end

  describe '#to_s by default' do
    it 'displays time under a minute in just seconds' do
      ReadingTime::Time.new(0.5).to_s.should == '30 seconds'
    end

    it 'displays minutes and seconds in plural' do
      ReadingTime::Time.new(2.5).to_s.should == '2 minutes and 30 seconds'
    end

    it 'displays 1 minute in singular and seconds in plural' do
      ReadingTime::Time.new(1.5).to_s.should == '1 minute and 30 seconds'
    end

    it 'displays a "sharp" minute time' do
      ReadingTime::Time.new(1).to_s.should == '1 minute, sharp'
    end
  end
end
