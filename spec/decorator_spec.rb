require_relative "./spec_helper"

describe "Testing Decorator class" do
  before :all do
    @person = Person.new 22, 'abcdefghizj'
    @capitalizer = CapitalizeDecorator.new @person
    @trimmer = TrimmerDecorator.new @person
  end

  context "When creating Decorator classes" do
    it "The class should be the be instance of CapitalizeDecorator" do
      expect(@capitalizer).to be_instance_of(CapitalizeDecorator)  
    end

    it "The class should be the be instance of TrimmerDecorator" do
      expect(@trimmer).to be_instance_of(TrimmerDecorator)  
    end
  end
end
