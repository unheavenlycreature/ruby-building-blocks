# frozen_string_literal: true

def shifted_character(codepoint, range_start, range_end, shift)
  codepoint += shift
  codepoint = range_start + (codepoint % range_end) - 1 if codepoint > range_end
  codepoint.chr
end

def caesar_cipher(to_obfuscate, shift)
  obfuscated = ''
  to_obfuscate.codepoints.each do |codepoint|
    obfuscated += if (65..90) === codepoint
                    shifted_character(codepoint, 65, 90, shift)
                  elsif (97..122) === codepoint
                    shifted_character(codepoint, 97, 122, shift)
                  else
                    codepoint.chr
                  end
  end
  obfuscated
end
