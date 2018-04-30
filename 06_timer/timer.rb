class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds = 0
  end
  def time_string
  	self.format_timer(@seconds /3600) +":"+self.format_timer((@seconds%3600)/60)+":"+ self.ormat_timer(@seconds % 60)
  end
  def format_timer(num)
  	if num >= 10 
  		return num.to_s
  	else
  		return "0" + num.to_s
   	end
  end
end
