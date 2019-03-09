class Hamming
  def self.compute(strand1, strand2)
    if (!strand1 || !strand2) || strand1.length != strand2.length
      raise ArgumentError, "Two strings of equal length are required"
    end
    hamming = 0
    (strand1.split(//)).zip(strand2.split(//)).each do |char|
      if char[0] != char[1]
        hamming += 1
      end
    end
    return hamming
  end
end
