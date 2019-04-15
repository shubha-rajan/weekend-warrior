module Roman
  VALUES = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1,
  }

  def self.reverter(s)
    total = 0
    (0..s.length).each do |index|
      case s[index]
      when "M"
        if (index == 0) || s[index - 1] != "C"
          total += VALUES["M"]
        else
          total += VALUES["M"] - VALUES["C"]
        end
      when "D"
        if (index == 0) || (s[index - 1] != "C")
          total += VALUES["D"]
        else
          total += VALUES["D"] - VALUES["C"]
        end
      when "C"
        if s[index + 1] != "D" && s[index + 1] != "M"
          if (index == 0) || (s[index - 1] != "X")
            total += VALUES["C"]
          else
            total += VALUES["C"] - VALUES["X"]
          end
        end
      when "L"
        if (index == 0) || (s[index - 1] != "X")
          total += VALUES["L"]
        else
          total += VALUES["L"] - VALUES["X"]
        end
      when "X"
        if s[index + 1] != "C" && s[index + 1] != "L"
          if (index == 0) || (s[index - 1] != "I")
            total += VALUES["X"]
          else
            total += VALUES["X"] - VALUES["I"]
          end
        end
      when "V"
        if (index == 0) || (s[index - 1] != "I")
          total += VALUES["V"]
        else
          total += VALUES["V"] - VALUES["I"]
        end
      when "I"
        if (index == (s.length - 1)) || (s[index + 1] == "I")
          total += VALUES["I"]
        end
      end
    end
    return total
  end
end
