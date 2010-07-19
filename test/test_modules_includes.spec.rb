require 'spec'

module RealFoo
  def do_this_expensive
    "just do it"
  end
end
module MockFoo
  def do_this_expensive
    "not really"
  end
end

class Foo
  if ENV["PROD"]
    include RealFoo
  else
    include MockFoo
  end

  def do_this_cheap
    "it's easy to do this"
  end
end

describe Foo do
  f = Foo.new

  it "cheap" do
    f.do_this_cheap.should eql "it's easy to do this"
  end

  it "hard" do
    f.do_this_expensive.should eql "not really"
  end

end
  
