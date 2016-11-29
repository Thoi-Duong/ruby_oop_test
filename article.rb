require 'date'
require_relative 'text'
require_relative 'image'

class Article

  attr_accessor :title, :contents, :release_datetime, :like_number

  def initialize(title = "title", contents = Array.new,
   release_datetime = nil, like_number = 0)

    @title = title
    @contents = contents
    @release_datetime = release_datetime
    @like_number = like_number

  end

  def get_contents
    contents_value(@contents)
  end

  def get_contents_by_display_order

    sort_contents = @contents.sort{|first, second| first.display_order <=> second.display_order}

    contents_value(sort_contents)

  end

  def is_releasd?

    return false if release_datetime.nil?

    return release_datetime <= Date.today

  end

  def like_increment
    @like_number += 1
  end

  private

    def contents_value(contents)

      contents_value = Array.new

      contents.each do |item|
        contents_value.insert(-1, item.sentence) if item.instance_of? Text
        contents_value.insert(-1, item.image_URL) if item.instance_of? Image
      end

      contents_value

    end
end

