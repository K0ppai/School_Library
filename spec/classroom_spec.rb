require_relative "./spec_helper"

describe "Testing Classroom class" do
  before :all do
    @classroom = Classroom.new "A"
    @student = Student.new 12, "Koppai"
    @classroom.add_student(@student)
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

  context "When implementing the methods" do
    it "The method add_student should add student into the student array" do
      students = @classroom.students
      expect(students.first).to be @student
    end

    it "The classroom of student should be the classroom class itself" do
      student = @student
      expect(student.classroom).to be @classroom
    end
  end
end
