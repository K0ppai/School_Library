require_relative "./spec_helper"

describe "Testing Decorator class" do
  context "When creating a Decorator class" do
    it "The class should have nameable" do
      decorator = Decorator.new "A"
      nameable = decorator.nameable
      expect(nameable).to eq 'A'
    end
  end
end
