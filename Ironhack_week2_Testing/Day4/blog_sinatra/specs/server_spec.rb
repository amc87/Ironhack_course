require "./server"

require "rspec"

require "rack/test"

describe "My Server" do
	include Rack::Test::Methods


	def app
		Sinatra::Application
	end

	it "should load the homepage" do
		get "/"
		expect(last_response).to be_ok
	end

end