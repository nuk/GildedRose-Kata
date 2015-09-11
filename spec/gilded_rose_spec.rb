require 'rspec'

require './gilded_rose.rb'

describe GildedRose do
  subject { GildedRose.new [item] }

  context "when item is an ordinary" do
    let(:item) { Item.new '+5 Dexterity Vest', 10, 20 }


    it "should decrease its 'days to sell' by 1" do
      expect { subject.update_quality }.to change(subject.items[0], :sell_in).by(-1)
    end


    it "should decrease its quality by 1" do
      expect { subject.update_quality }.to change(subject.items[0], :quality).by(-1)
    end


    it "should decrease its quality twice as fast if the sell-by date is passed ('days to sell' is below zero) " do
      item.sell_in = 0

      expect { subject.update_quality }.to change(subject.items[0], :quality).by(-2)
    end


    it "should never decrease its quality below zero" do
      item.quality = 1
      item.sell_in = 0

      expect {
        subject.update_quality
        subject.update_quality
      }.to change(subject.items[0], :quality).to(0)
    end
  end


  context "when item is the 'Aged Brie'" do
    let(:item) { Item.new 'Aged Brie', 2, 10 }


    it "should decrease its 'days to sell' by 1" do
      expect { subject.update_quality }.to change(subject.items[0], :sell_in).by(-1)
    end


    it "should increase its quality over time" do
      expect { subject.update_quality }.to change(subject.items[0], :quality).by(1)
    end


    it "shouldn't increase its quality over 50" do
      item.quality = 50

      expect { subject.update_quality }.to_not change(subject.items[0], :quality)
    end
  end


  context "when item is the 'Sulfuras, Hand of Ragnaros'" do
    let(:item) { Item.new 'Sulfuras, Hand of Ragnaros', 0, 80 }


    it "shouldn't change its 'days to sell' value" do
      expect { subject.update_quality }.to_not change(subject.items[0], :sell_in)
    end


    it "shouldn't change its quality" do
      expect { subject.update_quality }.to_not change(subject.items[0], :quality)
    end

  end


  context "when item is the 'Backstage passes to a TAFKAL80ETC concert'" do
    let(:item) { Item.new 'Backstage passes to a TAFKAL80ETC concert', 15, 5 }


    it "should decrease its 'days to sell' by 1" do
      expect { subject.update_quality }.to change(subject.items[0], :sell_in).by(-1)
    end


    it "should increase its quality by 1 if more than 10 days left" do
      expect { subject.update_quality }.to change(subject.items[0], :quality).by(1)
    end


    it "should increase its quality by 2 if 10 or less but more than 5 days left" do
      item.sell_in = 10

      expect { subject.update_quality }.to change(subject.items[0], :quality).by(2)
    end


    it "should increase its quality by 3 if 5 or less days left" do
      item.sell_in = 5

      expect { subject.update_quality }.to change(subject.items[0], :quality).by(3)
    end


    it "should drop its quality to 0 if no days left" do
      item.sell_in = 0

      expect { subject.update_quality }.to change(subject.items[0], :quality).to(0)
    end
  end


  xcontext "when item is the 'Conjured Mana Cake'" do
    let(:item) { Item.new 'Conjured Mana Cake', 10, 10 }


    it "should decrease its 'days to sell' by 1" do
      expect { subject.update_quality }.to change(subject.items[0], :sell_in).by(-1)
    end


    it "should decrease its quality by 2" do
      expect { subject.update_quality }.to change(subject.items[0], :quality).by(-2)
    end


    it "should decrease its quality twice as fast if the sell-by date is passed ('days to sell' is below zero) " do
      item.sell_in = 0

      expect { subject.update_quality }.to change(subject.items[0], :quality).by(-4)
    end


    it "should never decrease its quality below zero" do
      item.quality = 1
      item.sell_in = 0

      expect {
        subject.update_quality
        subject.update_quality
      }.to change(subject.items[0], :quality).to(0)
    end


  end


end