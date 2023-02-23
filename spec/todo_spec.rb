require 'todo'

RSpec.describe Todo do
  context '#add' do
    it 'adds an entry to the task list' do
      todo = Todo.new
      todo.add("task")
      expect(todo.all_tasks).to eq ["task"]
    end

    it 'adds multiple entries to the task list' do
      todo = Todo.new
      todo.add("task_1")
      todo.add("task_2")
      expect(todo.all_tasks).to eq ["task_1", "task_2"]
    end
  end

  context '#all_tasks' do
    it 'returns all tasks' do
      todo = Todo.new
      todo.add("task_1")
      todo.add("task_2")
      todo.add("task_3")
      todo.add("task_4")
      expect(todo.all_tasks).to eq ["task_1", "task_2", "task_3", "task_4"]
    end
  end
end
