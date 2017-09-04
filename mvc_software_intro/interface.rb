# The one that is gathering all files and initializes all objects

# Requiring a the two files task.rb and task_repository.rb:
require_relative './task_repository'
require_relative './task_controller'
require_relative './router'

repo = TaskRepository.new
controller = TaskController.new(repo)
router = Router.new(controller)

router.run
