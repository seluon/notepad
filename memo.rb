class Memo < Post

  def read_from_console
    puts 'Новая строка с точкой - конец'

    @text = []
    line = nil

    while line != '.' do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop

  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%d.%m.%Y, %H:%M:%S')} \n\r \n\r"

    return @text.unshift(time_string)
  end

end
