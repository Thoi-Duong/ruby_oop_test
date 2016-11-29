require "./text"

describe Text do

  describe "Text attrs" do

    context "check heading attr is defined in Text class" do
      it "returns true" do
        expect(Text.new().instance_variable_defined?(:@heading)).to eql(true)
      end
    end

    context "check display_order attr is defined in Text class" do
      it "returns true" do
        expect(Text.new().instance_variable_defined?(:@display_order)).to eql(true)
      end
    end

    context "check like_number attr is defined in Text class" do
      it "returns true" do
        expect(Text.new().instance_variable_defined?(:@like_number)).to eql(true)
      end
    end

    context "check sentence attr is defined in Text class" do
      it "returns true" do
        expect(Text.new().instance_variable_defined?(:@sentence)).to eql(true)
      end
    end

  end

  describe "like_increment" do
    context "like increment when call like_increment" do
      text = Text.new()
      it "returns 0" do
        expect(text.like_number).to eql(0)
      end
      it "return 1" do
        text.like_increment()
        expect(text.like_number).to eql(1)
      end
    end
  end
end
