require_relative "./spec_helper"

describe "Testing Rental class" do
  before :all do
    @book = Book.new 'T', 'A'
    @person = Person.new 22, 'K'
    @rental = Rental.new 12, @book, @person
  end

  context "When creating a Rental class" do
    it "The class should have date" do
      date = @rental.date
      expect(date).to be 12
    end
    
    it "The class should have book" do
      book = @rental.book
      expect(book).to be @book
    end
    
    it "The class should have person" do
      person = @rental.person
      expect(person).to be @person
    end

    it "The book of rental shold have the rental itself" do
      book_rental = @book.rentals.first
      expect(book_rental).to be @rental
    end
    
    it "The book of rental shold have the rental itself" do
      person_rental = @person.rentals.first
      expect(person_rental).to be @rental
    end
  end
end
