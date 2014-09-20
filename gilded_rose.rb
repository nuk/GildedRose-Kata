require './item.rb'


class GildedRose

  def initialize(item)
    @item = item
  end



  def update_quality
    case @item.name
      when 'Aged Brie'
        update_brie

      when 'Sulfuras, Hand of Ragnaros'
        update_sulfuras

      when 'Backstage passes to a TAFKAL80ETC concert'
        update_backstage

      else
        update_ordinary
    end
  end



  def update_ordinary
    @item.sell_in -= 1
    @item.quality -= 1
    @item.quality -= 1 if @item.sell_in < 0
    @item.quality = 0 if @item.quality < 0
  end



  def update_brie
    @item.sell_in -= 1
    @item.quality += 1 if @item.quality < 50
  end



  def update_sulfuras
  end



  def update_backstage
    @item.sell_in -= 1

    @item.quality = 0 and return if @item.sell_in < 0

    @item.quality += 1
    @item.quality += 1 if @item.sell_in <= 10
    @item.quality += 1 if @item.sell_in <= 5
  end

end