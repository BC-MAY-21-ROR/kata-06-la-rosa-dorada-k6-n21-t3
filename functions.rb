require_relative 'Item'
class Functions
    attr_accessor :item

    def initialize(item)
        @item = item
    end

    def lessThanEleven?
        if item.quality < 50
           item.quality += 2
        end
    end

    def lessThanSix?()
        if item.sell_in < 6
            if item.quality < 50
              item.quality+= 3
            end
        end
    end

    def setZero
        item.quality = 0    
    end

    def qualityLimit?
        item.quality <= 50 ? true : false
    end

    def incrementQuality
        item.quality +=1
    end

    def decrementQuality
        item.quality -=1
    end

    def sulfuras?
        item.sell_in = item.sell_in
        item.quality = item.quality
    end

    def incrementDouble
        item.quality += 2
    end

    def decrementDouble
        item.quality -= 2
    end 

end
