class Alouette
  TOTAL_VERSES = 8
  def self.lines_for_verse(verse_num)
    lines = [
      "Et le dos!",
      "Et la queue!",
      "Et les pattes!",
      "Et les ailes!",
      "Et le cou!",
      "Et les yeux!",
      "Et le bec!",
      "Et la tête!",
    ]
    return lines[TOTAL_VERSES - (verse_num + 1)...TOTAL_VERSES]
  end

  def self.verse(verse_num)
    lines_for_verse = self.lines_for_verse(verse_num)
    first_part = lines_for_verse[0].clone
    first_part.slice!("Et ")
    first_part.sub!("!", ".")
    lines = [
      "Je te plumerai #{first_part}\n",
      "Je te plumerai #{first_part}\n",
    ]
    lines_for_verse.each do |line|
      2.times do
        lines << "#{line}\n"
      end
    end
    lines = lines + ["Alouette!\n", "Alouette!\n", "A-a-a-ah"]
    lines = lines.join
    return lines
  end

  def self.sing
    song = ""
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    song += "#{refrain}\n"
    TOTAL_VERSES.times do |verse_num|
      song += "\n#{refrain}\n" if verse_num != 0
      song += "\n#{self.verse(verse_num)}\n"
    end
    song += "\n#{refrain}"

    return song
  end
end
