require_relative '../classroom'

describe Classroom do
  context 'when creating a valid classroom' do
    label = '2a'
    classroom = Classroom.new(label)

    it 'should be a valid classroom' do
      expect(classroom).to be_instance_of(Classroom)
    end

    it 'label should be"2a"' do
      expect(classroom.label).to eq(label)
    end

    it 'student list should be empty array' do
      expect(classroom.students).to eq([])
    end
  end
end
