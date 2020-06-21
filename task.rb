require 'date'

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts 'Новая задача:'
    @text = STDIN.gets.chomp

    puts 'Дата дедлайна:'
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%d.%m.%Y, %H:%M:%S')} \n\r \n\r"

    deadline = "Завершить до: #{@due_date}"

    return [deadline, @text, time_string]
  end

end
