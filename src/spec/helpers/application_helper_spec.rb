require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  describe "name space" do
    it "normal case" do
      expect( helper.space_name "RedPanda" ).to eq("Red Panda")
      expect( helper.space_name "BluePanda" ).to eq("Blue Panda")
      expect( helper.space_name "YellowPanda" ).to eq("Yellow Panda")
    end

    it "first string downcase" do
      expect( helper.space_name "redPanda" ).to eq("red Panda") 
    end

    it "all string downcase" do
      expect( helper.space_name "redpanda" ).to eq("redpanda") 
    end

    it "space in case" do
      expect( helper.space_name "red panda" ).to eq("redpanda") 
    end

    it "have middle name" do
      expect( helper.space_name "RedGiantPanda" ).to eq("Red Giant Panda") 
    end
  end
end
