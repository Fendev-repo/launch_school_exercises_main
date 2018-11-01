# Write a program that can generate the lyrics of the 99 Bottles of Beer song.
class BeerSong
  def verse(*verse)
    @verse_ary = verse
    sort_verse_sequence
    add_newlines_between_verses
    aggregate_return_string
    @return_str
  end

  def aggregate_return_string
    @return_str = ''
    @verse_ary.each do |sub_str|
      @return_str << case sub_str
                     when 0     then verse_zero
                     when 1     then verse_one
                     when 2..99 then verse_two_to_99(sub_str)
                     when "\n"  then sub_str
                     end
    end
  end

  def lyrics
    verse(99, 0)
  end

  def add_newlines_between_verses
    return if @verse_ary.length < 2

    @verse_ary.each_index do |idx|
      @verse_ary.insert(idx, "\n") if idx.odd?
    end
  end

  def sort_verse_sequence
    return if @verse_ary.length == 1
    # return if there are no missing numbers between args
    return if @verse_ary.first.pred == @verse_ary.last

    @verse_ary.first.downto(@verse_ary.last) do |num|
      @verse_ary << num unless @verse_ary.include?(num)
    end

    @verse_ary.sort!
    @verse_ary.reverse!
  end

  def verse_two_to_99(num)
    b1 = num == 2 ? 'bottle' : 'bottles'

    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
    "Take one down and pass it around, #{num - 1} #{b1} of beer on the wall.\n"
  end

  def verse_one
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def verse_zero
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  alias verses verse
end
