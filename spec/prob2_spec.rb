require 'prob2'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      list = TodoList.new
      list.add("Clean up room")
      expect(list.todos).to eq(["Clean up room"])
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      list = TodoList.new
      list.add("Clean up room")
      list.remove("Clean up room")
      expect(list.todos).to eq([])
    end
  end

  describe "#todos" do
    it "returns all todos" do
      list = TodoList.new
      list.add("Clean up room")
      list.add("Workout")
      expect(list.todos).to eq(["Clean up room", "Workout"])
    end
  end
end
