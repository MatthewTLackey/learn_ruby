class Timer
attr_accessor(:seconds, :minutes, :hours)

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0

  end


  def time_string
    @hours = @seconds / 3600
    @minutes = (@seconds - (@hours * 3600)) / 60
    @seconds = @seconds % 60
   "#{sprintf "%2.2d", @hours}:#{sprintf "%2.2d",@minutes}:#{sprintf "%2.2d",@seconds}"
  end



end