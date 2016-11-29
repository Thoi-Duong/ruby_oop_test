require_relative 'content'

class Image < Content

  attr_accessor :image_URL

  def initialize(image_URL = "url", display_order = 0, heading = "heading", like_number = 0)

    super(heading, display_order, like_number)

    @image_URL = image_URL

  end
end
