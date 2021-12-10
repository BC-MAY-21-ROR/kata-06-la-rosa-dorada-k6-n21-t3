require_relative 'Item'
require_relative 'functions'


item1 = Item.new("Queso", 10, 20)
item2 = Item.new("Queso", 10, 20)
item3 = Item.new("Queso", 10, 20)
item4 = Item.new("Queso", 10, 20)

items = Functions.new(item1)

#producto normalname
def updateItems(items)
    if items.item.quality == 50
        return
    end

    
    if(items.item.name == "Aged Brie")
        (items.item.sell_in == 0) ? items.incrementDouble : items.incrementQuality
    elsif (items.item.name == "Backstage passes to a TAFKAL80ETC concert")
        if(items.item.sell_in == 0)
            items.setZero
        elsif items.item.sell_in < 6
            items.lessThanSix?
        else
            items.lessThanEleven?
        end
    elsif(items.item.name == "Sulfuras")
        items.sulfuras?
    elsif (items.item.name == "Conjurados")
        items.decrementDouble
    else
        if items.item.quality >0 && items.qualityLimit? == true
            items.decrementQuality
        end 
    end
    puts "\t#{items.item.to_s()}"

end

def print_items(days, items)
    (0..days).each do |day|
        puts "Items in day #{day}"
        updateItems(items)
        puts ""
    end
end

print_items(20, items)