module Roman
  def self.reverter(s)
    total = 0
    (0...s.length).each do |index|
      case s[index]
      when "M"
        if index == 0
          total += 1000
        elsif s[index - 1] != "C"
          total += 1000
        else
          total += 900
        end
      when "D"
        if index == 0
          total += 500
        elsif s[index - 1] != "C"
          total += 500
        else
          total += 400
        end
      when "C"
        if s[index + 1] != "D" && s[index + 1] != "M"
          if index == 0
            total += 100
          elsif s[index - 1] != "X"
            total += 100
          else
            total += 90
          end
        end
      when "L"
        if index == 0
          total += 50
        elsif s[index - 1] != "X"
          total += 50
        else
          total += 40
        end
      when "X"
        if s[index + 1] != "C" && s[index + 1] != "L"
          if index == 0
            total += 10
          elsif s[index - 1] != "I"
            total += 10
          else
            total += 9
          end
        end
      when "V"
        if index == 0
          total += 5
        elsif s[index - 1] != "I"
          total += 5
        else
          total += 4
        end
      when "I"
        if index == (s.length - 1)
          total += 1
        elsif s[index + 1] == "I"
          total += 1
        end
      end
    end
    return total
  end
end
