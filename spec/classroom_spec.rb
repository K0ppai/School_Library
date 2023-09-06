require_relative './spec_helper'

describe "something to be performed" do

  before :all do
    @classroom = Classroom.new 'A'
    @student = Student.new 12, 'Koppai'
  end
  
  context "When creating classroom class" do
    it "The class should have label" do
      label = @classroom.label
      expect(label).to eq "A"  
    end

    it "The class should have students" do
      students = @classroom.students
      expect(students).to be_instance_of Array 
    end
  end
end
