require_relative '../teacher'

describe Teacher do
  context 'when creating a valid teacher that can use services' do
    age = 18
    name = 'Hans'
    specialization = 'Programming'
    teacher = Teacher.new(age, specialization, name)

    it 'should be a valid teacher' do
      expect(teacher).to be_instance_of(Teacher)
    end

    it 'age should be 18' do
      expect(teacher.age).to eq(age)
    end

    it 'name should be "Hans"' do
      expect(teacher.name).to eq(name)
    end

    it 'should have a specialization' do
      expect(teacher.specialization).to eq(specialization)
    end
  end
end
