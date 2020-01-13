def substrings(to_search, valid_substrings)
  to_search.downcase!
  valid_substrings.map! do |substring| substring.downcase end

  substring_counts = {}
  valid_substrings.each do |substring|
    count = to_search.scan(substring).length

    if count == 0
      next
    end

    if (substring_counts[substring].nil?)
      substring_counts[substring] = count
    else
      substring_counts[substring] = substring_counts[substring] + count
    end
  end
  substring_counts
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
