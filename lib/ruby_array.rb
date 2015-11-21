class RubyArray

  attr_accessor :length
  alias_method :size, :length

  def self.[](*args)
    array = RubyArray.new
    args.each { |arg| array << arg }
    array
  end

  def initialize
    @length = 0
  end

  def [](index)
    instance_variable_get "@element_#{index}"
  end

  def <<(obj)
    instance_variable_set "@element_#{@length}", obj
    @length += 1
    self
  end

  def first
    @element_0
  end

  def empty?
    length.zero?
  end

  def to_s
    "[]"
  end

  def ==(other)
    other && length == other.length && (0..length).all? { |index| self[index] == other[index] }
  end

end
