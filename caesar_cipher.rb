def shifted_character(codepoint, range_start, range_end, shift)
  codepoint += shift
  if codepoint > range_end
    codepoint = range_start + (codepoint % range_end) - 1
  end
  codepoint.chr
end

def caesar_cipher(to_obfuscate, shift)
  obfuscated = ""
  to_obfuscate.codepoints.each do |codepoint|
    if (65..90) === codepoint
      obfuscated << shifted_character(codepoint, 65, 90, shift)
    elsif (97..122) === codepoint
      obfuscated << shifted_character(codepoint, 97, 122, shift)
    else
      obfuscated << codepoint.chr
    end
  end
  obfuscated
end
