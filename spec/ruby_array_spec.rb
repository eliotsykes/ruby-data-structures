require 'ruby_array'

describe RubyArray do

  it 'has Object as its immediate parent' do
    expect(RubyArray.superclass).to eq Object
  end

  it 'initializes' do
    expect(RubyArray.new).not_to be nil
  end

  describe '.[](*args)' do
    it 'returns a new RubyArray populated with the given objects' do
      array = RubyArray[:a, 2, "c"]
      expect(array[0]).to eq :a
      expect(array[1]).to eq 2
      expect(array[2]).to eq "c"
    end
  end

  xit 'includes Enumerable' do

  end

  describe '<<' do
    it 'shovels elements on to array' do
      array = RubyArray.new
      expect do
        array << :first_element
      end.to change(array, :length).from(0).to(1)
      expect(array.first).to eq(:first_element)
    end

    it 'returns the array itself for shovel-operator chaining' do
      array = RubyArray.new
      array << 100 << 200 << 300 << 400
      expect(array).to eq RubyArray[100, 200, 300, 400]
    end
  end

  describe 'delete' do
    xit 'todo'
  end

  describe 'shift' do
    xit 'todo'
  end

  describe '.to_s' do
    it 'describes an empty array' do
      expect(RubyArray.new.to_s).to eq '[]'
    end

    xit 'describes a populated array' do

    end
  end

  describe '.length' do
    it 'returns 0 when empty' do
      expect(RubyArray.new.length).to eq 0
    end

    it 'returns length' do
      array = RubyArray.new
      (1..10).each do |i|
        array << i
        new_length = i
        expect(array.length).to eq new_length
      end
    end

    it 'is aliased as .size method' do
      expect(RubyArray[:x, :y, :z].size).to eq 3
    end
  end

  describe '.empty?' do
    it 'returns true if empty' do
      expect(RubyArray.new.empty?).to eq true
    end

    it 'returns false if not empty' do
      expect(RubyArray[:hello].empty?).to eq false
    end
  end

  describe 'first' do
    it 'returns first element' do
      array = RubyArray.new
      array << :apple << :banana << :car
      expect(array.first).to eq(:apple)
    end

    it 'returns nil for empty array' do
      expect(RubyArray.new.first).to be_nil
    end
  end

  describe '#==(other)' do
    it 'returns true for empty arrays' do
      expect(RubyArray.new).to eq RubyArray.new
    end

    it 'returns true for arrays with equal contents' do
      expect(RubyArray[:ann, :bob, :cat]).to eq RubyArray[:ann, :bob, :cat]
    end

    it 'returns false for arrays with same length and different contents' do
      expect(RubyArray["A", "BB", "CCC"]).not_to eq RubyArray["A", "BB", 3]
    end

    it 'returns false for nil' do
      expect(RubyArray.new).not_to eq nil
    end
  end

  xit 'handles index out of bounds'

  xit 'bsearch'
end
