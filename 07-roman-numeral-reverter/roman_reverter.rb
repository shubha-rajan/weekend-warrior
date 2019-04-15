module Roman
  VALUES = {
    "M" => { value: 1000, subtractor: "C", subtracts_from: [] },
    "D" => { value: 500, subtractor: "C", subtracts_from: [] },
    "C" => { value: 100, subtractor: "X", subtracts_from: ["M", "D"] },
    "L" => { value: 50, subtractor: "X", subtracts_from: [] },
    "X" => { value: 10, subtractor: "I", subtracts_from: ["C", "L"] },
    "V" => { value: 5, subtractor: "I", subtracts_from: [] },
    "I" => { value: 1, subtractor: nil, subtracts_from: ["V", "X"] },
  }

  def self.reverter(s)
    total = 0
    (0...s.length).each do |index|
      curr_char = s[index]
      prev_char = s[index - 1]
      next_char = s[index + 1]

      unless VALUES[curr_char][:subtracts_from].include?(next_char)
        if (index == 0) || (prev_char != VALUES[curr_char][:subtractor])
          total += VALUES[curr_char][:value]
        else
          total += VALUES[curr_char][:value] - VALUES[prev_char][:value]
        end
      end
    end
    return total
  end
end
