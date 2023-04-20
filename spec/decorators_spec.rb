require_relative '../decorators/decorators'
require_relative '../person'

describe CapitalizeDecorator do
  context 'when using the capitalize decorator' do
    it 'should capitalize' do
      lower = 'lucas comamala'
      caps = 'Lucas Comamala'

      p = Person.new(16, lower)
      dec = CapitalizeDecorator.new(p)
      expect(dec.correct_name).to eq(caps)
    end
  end
end

describe TrimmerDecorator do
  context 'when using the trimmer decorator' do
    it 'should trim to 10 characters' do
      original = 'lucas comamala'
      trimmed = 'lucas com'

      p = Person.new(16, original)
      dec = TrimmerDecorator.new(p)
      expect(dec.correct_name).to eq(trimmed)
    end
  end
end
