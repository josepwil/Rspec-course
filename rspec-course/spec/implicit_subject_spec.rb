RSpec.describe Hash do
  # subject - an instance of the class, already built in
  it "should start off empty" do
    expect(subject.length).to eq(0)
    subject[:some_key] = "some value"
    expect(subject.length).to eq(1)
  end

  it "is isolated between examples" do
    expect(subject.length).to eq(0)  
  end
end
