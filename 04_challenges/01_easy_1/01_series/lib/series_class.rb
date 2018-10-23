class Series
  def initialize(series)
    @series = series
  end

  def slices(length_of_slice)
    raise ArgumentError if length_of_slice > @series.length

    outer_ary = []
    @series.chars.each_cons(length_of_slice) do |sub_ary| 
      outer_ary << sub_ary.map(&:to_i)
    end
    outer_ary
  end
end