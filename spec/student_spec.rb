require_relative 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(16)
  end
  describe 'Initialize argument with values' do
    it 'Initialize age' do
      expect(@student.age).to eql(16)
    end
    it 'Initialize parent_permission' do
      expect(@student.parent_permission).to eql(true)
    end
    it 'Initialize name' do
      expect(@student.name).to eq('Unknown')
    end
  end
  describe '#classroom=' do
    it 'sets the classroom and assigns the student to it' do
      classroom = Classroom.new('Math')
      student = Student.new(16)
      student.classroom = classroom
      expect(student.classroom).to eq(classroom)
      expect(classroom.students).to include(student)
    end
  end
  describe '#play_hooky' do
    it "returns the 'shrug' emoji" do
      expect(@student.play_hooky).to eq('¯(ツ)/¯')
    end
  end
end
