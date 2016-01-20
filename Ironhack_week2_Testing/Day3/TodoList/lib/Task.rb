class Task
	attr_accessor :created_at, :updated_at, :id, :content, :completed
	@@current_id = 1
	def initialize(content = "hello there")
		@content = content
		@id = @@current_id
		@@current_id += 1
		@completed = false
		@created_at = Time.new
		@updated_at = nil
	end

	def complete?
		@completed
	end

	def complete!
		@completed = true
	end

	def make_incomplete!
		@completed = false
	end
	def update_content!(new_content)
		@updated_at = Time.new
		@content = new_content
		
	end

end

# task1 = Task.new("hola que tal")
# task2 = Task.new("hola que ase")
# task3 = Task.new("adios muy buenas")