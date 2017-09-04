require_relative './task_view'
require_relative './task'

class TaskController
  def initialize(repo)
    @repo = repo
    @view = TaskView.new
  end

  def add_task
    # ask to the user - View
    description = @view.add_task
    # create Task - Model
    new_task = Task.new(description)
    # saved on repo - Repository
    @repo.add(new_task)
  end

  def list_tasks
    # extract all tasks from tasks
    tasks = @repo.all
    # display all tasks
    @view.display_tasks(tasks)
  end

  def mark_as_done
    # display all tasks
    list_tasks
    # find a task
    task_index = @view.find_task
    task = @repo.find(task_index)
    # mark task as done
    task.mark_as_done
  end
end
