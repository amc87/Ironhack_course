require 'yaml/store'
require "pry"

class TodoList
    attr_reader :tasks

    def initialize(user)
        @todo_store = YAML::Store.new("./public/tasks.yml")
        @user = user
        @tasks = []

        
    end

    def load_tasks

        @todo_store.transaction do
            @tasks = @todo_store[@user]
        end
    end

    def add_task(new_task)
        # binding.pry
    	@tasks.push(new_task)

    end

    def delete(id_num)
    	@tasks.delete_if {|task| task.id == id_num}
    end

    def find_task_by_id(id_num)
    	# binding.pry
    	
        @tasks.select {|task| task.id ==  id_num}
    end
    
    def save
        # binding.pry
        @todo_store.transaction do
            @todo_store[@user] = @tasks
        end
    end

end


# todo_list = TodoList.new("Pepe")




