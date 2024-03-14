require 'prob3'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      string_wrapper = StringWrapper.new("California")
      expect(string_wrapper.reverse).to eq("ainrofilaC")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      string_wrapper = StringWrapper.new("hey")
      expect(string_wrapper.upcase).to eq("HEY")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      string_wrapper = StringWrapper.new("KITTEN")
      expect(string_wrapper.downcase).to eq("kitten")
    end
  end
end
