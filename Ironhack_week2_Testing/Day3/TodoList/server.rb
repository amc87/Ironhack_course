require 'sinatra'
require 'sinatra/reloader'

require "pry"

set :port, 3000
enable :sessions

require_relative('lib/Task.rb')
require_relative('lib/TodoList.rb')

todo_list = TodoList.new("Josh")


# get "/" do
# 	@text = session[:text]
# 	erb :index
# end

# get "/:text" do
# 	session[:text] = params[:text]
# 	redirect "/"
# end

get "/tasks" do
	# binding.pry
	@tasks = todo_list.load_tasks
	erb :task_index
end

get "/new_task" do
	erb :new_task
end

post "/create_task" do
	new_task = Task.new(params[:task_content])
	# binding.pry
	add_to_list = todo_list.add_task(new_task)
	save_tasks = todo_list.save
	redirect "/tasks"
end

