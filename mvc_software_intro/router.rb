class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      show_actions
      choice = gets.chomp.to_i
      manage_action(choice)
    end
  end

  private

  def show_actions
    puts "\n"
    puts "------------------"
    puts "-- TASK MANAGER --"
    puts "------------------"

    puts ' What do you want to do?'
    puts '1. Add Task'
    puts '2. List Tasks'
    puts '3. Mark task as done'
    puts '>'
  end

  def manage_action(action)
    case action
      when 1 then @controller.add_task
      when 2 then @controller.list_tasks
      when 3 then @controller.mark_as_done
      else puts "Wrong action"
    end
  end
end
