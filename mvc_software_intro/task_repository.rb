# Class TaskRepository
# Organizes the creation, identification and storage of tasks in an array @tasks:
class TaskRepository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def add(task)
    @tasks << task
  end
end
