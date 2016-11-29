require "./image"

describe Image do

  describe "Image attrs" do

    context "check heading attr is defined in Image class" do
      it "returns true" do
        expect(Image.new().instance_variable_defined?(:@heading)).to eql(true)
      end
    end

    context "check display_order attr is defined in Image class" do
      it "returns true" do
        expect(Image.new().instance_variable_defined?(:@display_order)).to eql(true)
      end
    end

    context "check like_number attr is defined in Image class" do
      it "returns true" do
        expect(Image.new().instance_variable_defined?(:@like_number)).to eql(true)
      end
    end

    context "check image_URL attr is defined in Image class" do
      it "returns true" do
        expect(Image.new().instance_variable_defined?(:@image_URL)).to eql(true)
      end
    end

  end

  describe "like_increment" do

    context "like increment when call like_increment" do

      image = Image.new()

      it "returns 0" do
        expect(image.like_number).to eql(0)
      end

      it "return 1" do
        image.like_increment()
        expect(image.like_number).to eql(1)
      end

    end

  end

end
