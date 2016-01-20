require "rspec"

require "./todolist.rb"

require "pry"
	
describe "#Task" do
	before :each do
		@subject = Task.new
	end

	describe "#complete?" do 
		it "returns boolean depending on completed status" do
			expect(@subject.complete?).to eq(false)
		end
	end

	describe "#complete!" do
		it "sets @completed to 'true'" do
			@subject2 = Task.new
			@subject2.complete!
			expect(@subject2.complete?).to eq(true)
		end
	end

	describe "#make_incomplete!" do
		it "sets @completed to 'false'" do
			expect(@subject.make_incomplete!).to eq(false)
		end
	end

	describe "#update_content!" do
		it "changes the @content" do
			expect(@subject.update_content!("cambio el contenido!!!")).to eq("cambio el contenido!!!")
		end
	end

end

describe "#TodoList" do
	before :each do
		@subject = Task.new
		@subject2 = TodoList.new
	end

	describe "#add_task" do
		it "Adds a new task to the list" do
			expect(@subject2.add_task(@subject)).not_to eq([])
		end
	end

	describe "#delete" do
		it "deletes a task by ID" do
			@subject2.add_task(@subject)
			expect(@subject2.delete(7)).to eq([])
		end
	end

	describe "#find_task_by_id" do
		it "finds a task with a given ID" do
			@subject2.add_task(@subject)
			expect(@subject2.find_task_by_id(8)).to eq(@subject2.find_task_by_id(8))
		end
	end
end