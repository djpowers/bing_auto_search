def generate_query
  query = ''
  alphabet = ('a'..'z').to_a
  until query.length == 6
    query << alphabet.sample
  end
  query
end

def search_bing
  `open http://bing.com/search?q=#{generate_query}`
end

iterations = ARGV.first.to_i

iterations.times do
  search_bing
end
