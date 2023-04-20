require_relative '../student'

describe Student do
  context 'when creating a valid student that can use services' do
    age = 18
    name = 'Hans'
    perm = false
    classroom = '2a'
    student = Student.new(classroom, age, name, parent_permission: perm)

    it 'should be a valid student' do
      expect(student).to be_instance_of(Student)
    end

    it 'age should be 18' do
      expect(student.age).to eq(age)
    end

    it 'name should be "Hans"' do
      expect(student.name).to eq(name)
    end

    it 'should be assign to a classrom' do
      expect(student.classroom).to eq(classroom)
    end

    it 'parent_permission should be true' do
      expect(student.can_use_services?).to eq(true)
    end
  end

  context "when creating a valid student that can't use services" do
    age = 16
    name = 'Lucas'
    perm = false
    classroom = '2a'
    student = Student.new(classroom, age, name, parent_permission: perm)

    it 'should be a valid student' do
      expect(student).to be_instance_of(Student)
    end

    it 'age should be 16' do
      expect(student.age).to eq(age)
    end

    it 'name should be "Lucas"' do
      expect(student.name).to eq(name)
    end

    it 'should be assign to a classrom' do
      expect(student.classroom).to eq(classroom)
    end

    it 'parent_permission should be false' do
      expect(student.can_use_services?).to eq(false)
    end
  end
end
