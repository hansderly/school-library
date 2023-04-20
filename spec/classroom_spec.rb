require_relative '../classroom'

describe Classroom do
  context "when creating a valid classroom" do
    it "should be valid" do
      label = '2a'
      classroom = Classroom.new(label)
      expect(classroom).to be_instance_of(Classroom)
      expect(classroom.label).to eq(label)
      expect(classroom.students).to eq([])
    end
  end
end
