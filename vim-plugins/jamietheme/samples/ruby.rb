# This is a sample ruby file

class MyClass < ParentClass
  def initialize(options)
    @options = options
    @a_number = 300
    @a_string = 'string'
    @a_symbol = :symbol
  end

  def method_one
    doubled = [1,2,3].map do |n|
      n * 2
    end
    method_two @options.some_option, false
    doubled
  end

  def method_two(some, whether)
    if (2 < 5)
      5
    else
      whether ? "#{some} string" : some
    end
  end
end
