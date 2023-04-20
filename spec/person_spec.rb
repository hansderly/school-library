require_relative '../person'

describe Person do
  context 'when creating a valid person that can use services' do
    age = 18
    name = 'Hans'
    perm = false
    person = Person.new(age, name, parent_permission: perm)

    it 'should be a valid person' do
      expect(person).to be_instance_of(Person)
    end

    it 'age should be 18' do
      expect(person.age).to eq(age)
    end

    it 'name should be "Hans"' do
      expect(person.name).to eq(name)
    end

    it 'parent_permission should be true' do
      expect(person.can_use_services?).to eq(true)
    end
  end

  context "when creating a valid person that can't use services" do
    age = 16
    name = 'Lucas'
    perm = false
    person = Person.new(age, name, parent_permission: perm)

    it 'should be a valid person' do
      expect(person).to be_instance_of(Person)
    end

    it 'age should be 16' do
      expect(person.age).to eq(age)
    end

    it 'name should be "Lucas"' do
      expect(person.name).to eq(name)
    end

    it 'parent_permission should be false' do
      expect(person.can_use_services?).to eq(false)
    end
  end
end
