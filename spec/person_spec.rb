require_relative 'spec_helper'
require 'date'

describe Person do
  before :each do
    @person = Person.new 12
  end

  describe 'Initialize argument with values' do
    it 'Initialize age' do
      expect(@person.age).to eql(12)
    end
    it 'Initialize parent_permission' do
      expect(@person.parent_permission).to eq(true)
    end
    it 'Initialize name' do
      expect(@person.name).to eq('Unknown')
    end
  end
  describe 'checking of_age method' do
    it 'returns true for of_age? when age is 18 or older' do
      person = Person.new(18, false)
      expect(person.send(:of_age?)).to eq(true)
    end
  end
  describe 'checking can_use_services method' do
    it 'returns true can_use_services? when age is 18 or older' do
      person = Person.new(18, false)
      expect(person.can_use_services?).to eq(true)
    end
    it 'returns true can_use_services? when parent_permission is true' do
      person = Person.new(16, true)
      expect(person.can_use_services?).to eq(true)
    end
  end
  describe '#correct_name' do
    it 'returns name' do
      expect(@person.name).to eql('Unknown')
    end
  end
  describe '#add_rental' do
    it 'must push rental to rentals' do
      person = Person.new(18, false)
      book = Book.new('young man', 'manzi')
      rental = Rental.new(Date.today, book, person)
      person.add_rental(rental)
      expect(person.rentals).to include(rental)
    end
  end
end
