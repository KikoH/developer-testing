require_relative '../lib/item'

class BackstagePass < Item 
	def update_sell_in
		@sell_in -= 1
	end

	def update_quality
		if @quality < 50
	      @quality = @quality + 1
	      @quality += 1 if @sell_in < 10 && @quality < 50
	      @quality += 1 if @sell_in < 5 && @quality < 50
	    end
      
	      # Items degrade faster or altogether after sell_in reaches 0
	      @quality = 0 if @sell_in < 0
	end
end