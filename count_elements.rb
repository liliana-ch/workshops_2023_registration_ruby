class CountElements
  def initialize(array)
    @array = array
  end

  def perform
    counts = Hash.new(0)
    @array.each { |element| counts[element] += 1 }
    puts counts
  end

end


CountElements.new([0,4,2,1,0,2,5]).perform
