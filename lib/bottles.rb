class Bottles
  def song
    verses(99, 0)
  end

  def verses(bottles_no_up, bottles_no_down)
    _verses = []
    bottles_no_up.downto(bottles_no_down) do |bottles_no|
      _verses << verse(bottles_no)
    end
    _verses.join("\n")
  end

  def verse(bottles_no)
    verses = Array( main_phrase(bottles_no) )
    verses << ending_phrase(bottles_no -1)
    verses << ""

    verses.join("\n")
  end

  private
  def main_phrase(bottles_no)
    plural = bottles_no > 1? 's' : ''

    if bottles_no == 0
      return "No more bottles of beer on the wall, no more bottles of beer."
    end
    "#{bottles_no} bottle#{plural} of beer on the wall, #{bottles_no} bottle#{plural} of beer."
  end

  def ending_phrase(bottles_no)
    plural = bottles_no > 1? 's' : ''

    if bottles_no < 0
      return "Go to the store and buy some more, 99 bottles of beer on the wall."
    end

    if bottles_no == 0
      return "Take it down and pass it around, no more bottles of beer on the wall."
    end

    "Take one down and pass it around, #{bottles_no} bottle#{plural} of beer on the wall."
  end
end
