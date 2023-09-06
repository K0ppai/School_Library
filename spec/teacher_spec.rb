require_relative 'spec_helper'

describe 'Testing Teacher class' do
  before :all do
    @teacher = Teacher.new 'Math', 23, 'Dasy'
  end

  context 'When creating the Teacher class' do
    it 'The class should be a Teacher class' do
      expect(@teacher).to be_an_instance_of(Teacher)
    end

    it 'The class should have specialization' do
      specialization = @teacher.specialization
      expect(specialization).to eq 'Math'
    end

    it 'The class should have age' do
      age = @teacher.age
      expect(age).to be 23
    end

    it 'The class should have name' do
      name = @teacher.name
      expect(name).to eql 'Dasy'
    end

    it 'The class should have parent_permission' do
      parent_permission = @teacher.parent_permission
      expect(parent_permission).to be true
    end
  end

  context 'When Implementing the methods' do
    it 'The class should be able to use services' do
      can_use_services = @teacher.can_use_services?
      expect(can_use_services).to be true
    end
  end
end
