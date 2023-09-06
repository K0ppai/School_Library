require_relative 'spec_helper'

describe 'Testing Decorator class' do
  before :all do
    @person = Person.new 22, 'abcdefghizj'
    @capitalizer = CapitalizeDecorator.new @person
    @trimmer = TrimmerDecorator.new @person
  end

  context 'When creating Decorator classes' do
    it 'The class should be the be instance of CapitalizeDecorator' do
      expect(@capitalizer).to be_instance_of(CapitalizeDecorator)
    end

    it 'The class should be the be instance of TrimmerDecorator' do
      expect(@trimmer).to be_instance_of(TrimmerDecorator)
    end
  end

  context 'When using correct_name methods' do
    it 'The correct_name of CapitalizeDecorator class should return a capitalized string' do
      capitalized_string = @capitalizer.correct_name
      expect(capitalized_string).to eq 'Abcdefghizj'
    end

    it 'The correct_name of TrimmerDecorator class should return a trimmed string' do
      trimmed_string = @trimmer.correct_name
      expect(trimmed_string).to eq 'abcdefghiz'
    end
  end
end
