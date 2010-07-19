require 'spec'

class Numeric
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def ago
    t = Time.now.to_i - self
    Time.at(t)
  end
end

describe "Numeric opened" do
  #it "nothing up my sleeve" do
  #  # comment out class definition above
  #  lambda {5.seconds}.should raise_error(NoMethodError)
  #end
  it "don't worry, existing methods are still there" do
    -1.abs.should eql 1
  end

  it "seconds = self" do
    5.seconds.should eql 5
  end

  it "minutes = self*60" do
    5.minutes.should eql 300
  end

  it "ago" do
    t = Time.now.to_i
    5.seconds.ago.to_i.should be_close(t-5, 1)
    1.minutes.ago.to_i.should be_close(t-60, 1)
  end

end
