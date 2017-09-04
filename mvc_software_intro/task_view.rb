class TaskView
  def display_tasks(tasks)
    puts "\n"
    tasks.each_with_index do |task, i|
      status = task.done? ? '[X]' : '[ ]'
      puts "#{i + 1}. #{status} - #{task.name}"
      puts "\n"
    end
  end

  def add_task
    puts "Description of your task"
    gets.chomp
  end

  def find_task
    gets.chomp.to_i - 1
  end
end
