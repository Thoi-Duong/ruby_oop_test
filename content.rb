
class Content

  attr_accessor :heading, :display_order, :like_number

  def initialize(heading = "heading", display_order =0, like_number= 0)

    @heading = heading
    @display_order = display_order
    @like_number = like_number

  end
  def like_increment
    @like_number += 1
  end
end
