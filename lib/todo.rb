class Todo
  def initialize
    @tasks = []
  end
  
  def add(task)
    @tasks << task
  end

  def all_tasks
    return @tasks
  end
end