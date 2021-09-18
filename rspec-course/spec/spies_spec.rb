# placing expectation after the action (compared to double which do it before the action)
RSpec.describe "spies" do
  let(:animal) { spy("animal") }

  it "confirms that a message has been received" do
    animal.eat_food
    expect(animal).to have_received(:eat_food) 
    expect(animal).not_to have_received(:drink_water) 
  end

  it "resets between exampls" do
    expect(animal).not_to have_received(:eat_food) 
  end

  it "retains the same functionality of a regular double" do
    animal.eat_food
    animal.eat_food
    animal.eat_food("Sushi")
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).with("Sushi")
  end
  
end
