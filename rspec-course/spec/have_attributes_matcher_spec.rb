# Code
class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

# Specs
RSpec.describe "have_attributes matcher" do
  describe ProfessionalWrestler.new("Stone cold", "Stunner")  do
    it "checks for object attributes and proper values" do
      expect(subject).to have_attributes(name: "Stone cold") 
      expect(subject).to have_attributes(name: "Stone cold", finishing_move: "Stunner") 
    end

    it { is_expected.to have_attributes(name: "Stone cold", finishing_move: "Stunner") }
  end
end
