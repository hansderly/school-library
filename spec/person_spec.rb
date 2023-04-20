require_relative '../person'

describe Person do
  context "when creating a valid person that can use services" do
    it "should be valid" do
      age = 18
      name = 'Hans'
      perm = false
      person = Person.new(age, name, parent_permission: perm)
      expect(person).to be_instance_of(Person)
      expect(person.age).to eq(age)
      expect(person.name).to eq(name)
      expect(person.can_use_services?).to eq(true)
    end
  end

  context "when creating a valid person that can't use services" do
    it "should be valid" do
      age = 16
      name = 'Lucas'
      perm = false
      person = Person.new(age, name, parent_permission: perm)
      expect(person).to be_instance_of(Person)
      expect(person.age).to eq(age)
      expect(person.name).to eq(name)
      expect(person.can_use_services?).to eq(false)
    end
  end
end
