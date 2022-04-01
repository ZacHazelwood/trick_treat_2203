require_relative '../lib/candy'

class Bag

attr_reader :candies, :empty
  # :count

  def initialize
    @candies = []
    @empty = true
    # @count = 0
  end

  def empty?
    if @candies.count > 0
      @empty = false
    end
    return @empty
  end

  def add_candy(candy)
    @candies << candy
    # @count += 1
  end

  def count
    @candies.length
  end

  def contains?(type)
    # @candies.include?(type)
    @candies.each do |candy|
      if candy.type == type
        return true
      end
    end
    return false
  end

end
