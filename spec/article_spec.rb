require "./article"
require "./image"
require "./text"
require "date"

describe Article do

  describe "Article attrs" do

    context "check title attr is defined in Article class" do
      it "returns true" do
        expect(Article.new().instance_variable_defined?(:@title)).to eql(true)
      end
    end

    context "check release_datetime attr is defined in Article class" do
      it "returns true" do
        expect(Article.new().instance_variable_defined?(:@release_datetime)).to eql(true)
      end
    end

    context "check like_number attr is defined in Article class" do
      it "returns true" do
        expect(Article.new().instance_variable_defined?(:@like_number)).to eql(true)
      end

    end

  end

  describe "method get image content and Sentence" do

    context "get array content image content and Sentence" do

      it "returns true" do

        content = Array.new()

        5.times do |i|
          content.insert(-1, Image.new("url #{i}")) if i.even?
          content.insert(-1, Text.new("sentence #{i}")) if i.odd?
        end

        article = Article.new("acticle 1", content, Date.today)
        content_value = article.get_contents()
        expect_content_value = ["url 0", "sentence 1", "url 2", "sentence 3", "url 4"]
        expect(content_value).to eql(expect_content_value)
      end

    end

    context "get array content image content and Sentence sort by display order" do

      it "returns true" do
        content = Array.new()

        5.times do |i|
          content.insert(-1, Image.new("url #{i}", 5 - i)) if i.even?
          content.insert(-1, Text.new("sentence #{i}", 5 - i)) if i.odd?
        end

        article = Article.new("acticle 1", content, Date.today)
        content_value = article.get_contents_by_display_order
        expect_content_value =  ["url 4", "sentence 3", "url 2", "sentence 1", "url 0"]
        expect(content_value).to eql(expect_content_value)
      end

    end

  end

  describe "check Article has release or not" do

    context "not release" do

      it "return false" do
        article = Article.new("acticle 1", Array.new(), Date.today.next)
        expect(article.is_releasd?).to eql(false)
      end

      it "return false" do
        article = Article.new
        expect(article.is_releasd?).to eql(false)
      end

    end

    context "released" do
      it "return true" do
        article = Article.new("acticle 1", Array.new(), Date.today.prev_day)
        expect(article.is_releasd?).to eql(true)
      end
    end

  end

  describe "like_increment" do

    context "like increment when call like_increment" do

      acticle = Article.new()

      it "returns 0" do
        expect(acticle.like_number).to eql(0)
      end

      it "return 1" do
        acticle.like_increment()
        expect(acticle.like_number).to eql(1)
      end

    end

  end

end
