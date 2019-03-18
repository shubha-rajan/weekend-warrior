def words(phrase)
  counts = {}
  words = phrase.split
  words.each do |word|
    if counts.keys.include?(word)
      counts[word] += 1
    else
      counts[word] = 1
    end
  end
  return counts
end
