module StringOperations
  def magic_string(tanya_said)
    p %Q(Nastya said: "Tanya : #{tanya_said}")
    p %q(Nastya said: 'Tanya: #{tanya_said}')
    p %W(#{tanya_said} Hey Hey\ with\ space)
    p %w(#{tanya_said} Hey Hey\ with\ space)
    p %s(lol lol)
    p %i(lol hello)
  end
end


class FirstTask

  include StringOperations

  def initialize(array = [], string = '')
    @array = array
    @string = string
  end

  def concat_variables(variable)
    if (variable.kind_of? Array)
      @array.concat(variable)
    elsif (variable.kind_of? String)
      @string.concat(variable)
    else
      puts 'Write Array or String!'
    end       
  end

  def convert_to_utf_8(value)
    p value.chr(Encoding::UTF_8)
  end

  def strings_concat(str1, str2)
    str1 = str1.unpack('c*')
    str2 = str2.unpack('c*')
   
    str2.each do |letter|
      str1[str1.size] = letter
    end
    new_string = str1.pack("C" * str1.size)
    p new_string
  end
end

example = FirstTask.new([1,2,3], 'Nastya ')
# example_2 = FirstTask.new

# example.concat_variables('Love')
# example.concat_variables([2,4,5])

example.convert_to_utf_8(22)
# example.strings_concat('clever', ' girl')
# example.magic_string('Hey')