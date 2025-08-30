require_relative "../Documents/add_numbers"

RSpec.describe Calculator do
  subject(:calc) { described_class.new }

  describe "#add_numbers" do
    context "when string contains only positive numbers" do
      it "returns the sum" do
        expect(calc.add_numbers("1,3,4")).to eq(8)
      end
    end

    context "when string is empty" do
      it "returns 0" do
        expect(calc.add_numbers("")).to eq(0)
      end
    end

    context "when string contains negative numbers" do
      it "returns an error message with the negative numbers" do
        expect(calc.add_numbers("1,3\n4-3"))
          .to eq("negative numbers not allowed: -3")
      end
    end

    context "when string contains multiple delimiters" do
      it "still calculates the sum" do
        expect(calc.add_numbers("\\;1,3\n4,3")).to eq(11)
      end
    end
  end
end
