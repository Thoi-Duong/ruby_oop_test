require_relative 'content'

class Text < Content

  attr_accessor :sentence

  def initialize(sentence = "sentence", display_order =0, heading = "heading", like_number= 0)

    super(heading, display_order, like_number)

    @sentence = sentence

  end
end
