def french_ssn_info(ssn)
  pattern = /^(?<gender>(1|2))\s?(?<birthyear>\d{2})\s?(?<birthmonth>(0[1-9]|1[0-2]))\s?(?<department>(0[1-9]|[1-9][0-9]))(?<lastdigits>\d{2}\s?\d{3}\s?\d{3}\s?\d{2})$/
  ssn_clean = ssn.delete(" ")
  if ssn_clean !~ pattern
    puts "not a valid ssn"
    return nil
  else
    puts "valid ssn"
    matched = ssn_clean.match(pattern)
  end

  puts "a #{gender(matched[:gender])}, born in #{month(matched[:birthmonth])}, 19#{matched[:birthyear]} in department number #{matched[:department]}."
end

def gender(number)
  if number.to_i == 1
    return "man"
  else
    return "woman"
  end
end

def month(code)
  return Date::MONTHNAMES[code.to_i]
end

french_ssn_info("1 84 12 76 451 089 46")
#=> "a man, born in December, 1984 in Seine-Maritime."
