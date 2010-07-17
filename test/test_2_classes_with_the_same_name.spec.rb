require 'spec'

class Foo
  def bar
    "bar"
  end
  def baz
    "baz"
  end
end


describe Foo do
  it "has method bar" do
    f = Foo.new
    f.methods.include?('bar').should be_true
  end

  it "has method baz" do
    f = Foo.new
    f.methods.include?('baz').should be_true
  end

  it "bar return 'bar'" do
    Foo.new.bar.should eql 'bar'
  end

  # it "open Foo, redefine bar" do
  #   class Foo
  #     def bar
  #       "whatever"
  #     end
  #   end

  #   f = Foo.new 
  #   f.bar.should eql 'whatever'
  #   f.baz.should eql 'baz'
  # end

  it "what happens with previously instantiated object?" do
    f = Foo.new
    f.bar.should eql 'bar'
    f.baz.should eql 'baz'

    class Foo
      def bar
        "whatever"
      end
    end
    
    f.bar.should eql 'whatever'
    f.baz.should eql 'baz'
  end
end

