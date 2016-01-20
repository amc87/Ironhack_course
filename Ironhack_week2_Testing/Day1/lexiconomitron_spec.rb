require "rspec"

require "./lexiconomitron.rb"
	

describe Lexiconomitron do 
	before :each do
	@lexi = Lexiconomitron.new
	end
  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
  describe "#shazam" do
  	it "takes an array of words and returns first and last words reversed" do
  		expect(@lexi.shazam(["hola", "que", "tal"])).to eq(["aloh", "lat"])
  		end
	end
	describe "#oompa_loompa" do
  	it "takes an array of words and returns in the same order the values that are 3 or less characters" do
  		expect(@lexi.oompa_loompa(["hola", "que", "tal", "yo", "chorizo"])).to eq(["que", "tal", "yo"])
  		end
	end

		describe "#all" do
  	it "goes through all the methods: shazam, oompa_loompa and eat_t" do
  		expect(@lexi.all(["tla","que","tal","chorizo","Charlie","Álvaro", "tue"])).to eq("al,eu")
  		end
	end

end
