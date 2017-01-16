def roman_numerals(decimal)
  decimal_to_roman = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100=> "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
  remaining = decimal
  decimal_to_roman.inject("") do |result,conversion|
    whole, remaining = remaining.divmod(conversion[0])
    result << conversion[1] * whole
  end
end
