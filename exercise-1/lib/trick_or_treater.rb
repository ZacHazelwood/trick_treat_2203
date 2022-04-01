require_relative '../lib/costume'
require_relative '../lib/bag'
require_relative '../lib/candy'
require_relative '../lib/trick_or_treater'



class TrickOrTreater

attr_reader :costume, :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    @bag.empty? == false
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.candies.shift
  end

end
