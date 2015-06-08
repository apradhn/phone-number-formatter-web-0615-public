def normalize_phone_number(phone_number)
  numbers = phone_number.scan(/\d/)
  if phone_number =~ /\(?\d{3}[\) -]?\d{3}[- ]?\d{4}/
    normalized_phone_number = "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..10].join}"
  else
    phone_number
  end  
end