class Temperature
  # TODO: your code goes here!
  attr_accessor :options

  def initialize(options)
  	@options = options
  end

  def in_fahrenheit
  	options[:f] ? options[:f] : ctof(options[:c])
  end

  def in_celsius
  	options[:c] ? options[:c] : ftoc(options[:f])
  end

  def self.from_celsius(t_in_celsius)
  	self.new(:c => t_in_celsius)
  end

  def self.from_fahrenheit(t_in_fahrenheit)
  	self.new(:f => t_in_fahrenheit)
  end

  def ftoc(t_in_fahrenheit)
  	(t_in_fahrenheit - 32) * (5.0 / 9.0)

  end

  def ctof(t_in_celsius)
  	(t_in_celsius * (9.0 / 5.0)) + 32
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end