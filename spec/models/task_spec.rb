require "rails_helper"

RSpec.describe Task, type: :model do 
  describe "instance methods" do 
    describe "#laundry?" do 
      it "returns a boolean and checks if the task is laundry" do 
        task = Task.create!(title: "laundry", description: "clean clothes")

        expect(task.laundry?).to be(true)
      end 
    end 
  end 
end 