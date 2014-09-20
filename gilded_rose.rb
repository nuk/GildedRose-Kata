require './item.rb'

class OrdinaryItem < Item
  def update
    @sell_in -= 1
    @quality -= 1
    @quality -= 1 if @sell_in < 0
    @quality = 0 if @quality < 0
  end
end


class BrieItem < Item
  def update
    @sell_in -= 1
    @quality += 1 if @quality < 50
  end
end


class SulfurasItem < Item
end


class BackstageItem < Item
  def update
    @sell_in -= 1
    @quality += 1
    @quality += 1 if @sell_in <= 10
    @quality += 1 if @sell_in <= 5
    @quality = 0 if @sell_in < 0
  end
end


class ConjuredItem < Item
  def update
    @sell_in -= 1
    @quality -= 2
    @quality -= 2 if @sell_in < 0
    @quality = 0 if @quality < 0
  end
end


class GildedRose
  attr_reader :item

  ITEM_CLASSES = {
    'Aged Brie' => BrieItem,
    'Sulfuras, Hand of Ragnaros' => SulfurasItem,
    'Backstage passes to a TAFKAL80ETC concert' => BackstageItem,
    'Conjured Mana Cake' => ConjuredItem,
  }


  def initialize(item)
    @item = klass_for(item)
  end



  def klass_for(item)
    klass = ITEM_CLASSES.fetch(item.name) { OrdinaryItem }

    klass.new item.name, item.sell_in, item.quality
  end



  def update_quality
    @item.update
  end
end