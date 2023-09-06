require './spec_helper.rb'


describe Teacher do

  before :each do
    @teacher = Teacher.new "Math", 23, "Dasy"
  end

  context "When creating the Teacher class" do

    it "The class should be a Teacher class" do
      expect(@teacher).to be_an_instance_of(Teacher)
    end
    
  end

end
