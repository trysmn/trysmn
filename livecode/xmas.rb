require "dates"

def xmas_days(day, month, year)

  any_date = Date.new(year, month day)
  xmas = Date.new(year,12,25)
  days = (xmas - any_date)

  if days >= 0
    return (xmas - any_date).to_i
  else
    (xmas.next_year - any_date).to_i
  end

end

puts xmas_days(26,12,2017)
