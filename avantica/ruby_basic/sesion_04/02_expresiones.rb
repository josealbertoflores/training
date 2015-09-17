# Expresiones de comando
resultado = %x{whoami}
resultado = `ver`

# Refactorizar el siguiente codigo
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
if !games.empty?
  puts "Games in your vast collection: #{games.count}"
end

puts "Games in your vast collection: #{games.count}" unless games.empty?

# Refactorizar el siguiente codigo
search = "Contra"
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
search_index = games.find_index(search)
if search_index != nil
  puts "Game #{search} Found: #{games[search_index]} at index #{search_index}."
else
  puts "Game #{search} not found."
end

if search_index
  puts "Game #{search} Found: #{games[search_index]} at index #{search_index}."
else
  puts "Game #{search} not found."
end

# Refactorizar el siguiente codigo
search = "" unless search
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
matched_games = games.grep(Regexp.new(search))
puts "Found the following games..."
matched_games.each do |game|
  puts "- #{game}"
end

search ||= search
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
matched_games = games.grep(Regexp.new(search))
puts "Found the following games..."
matched_games.each do |game|
  puts "- #{game}"
end

# 

# Refactorizar el siguiente codigo
def search(games, search_term)
  search_index = games.find_index(search_term)
  search_result = if search_index
    "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
  else
    "Game #{search_term} not found."
  end
  return search_result
end

def search(games, search_term)
  search_index = games.find_index(search_term)
  if search_index
    "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
  else
    "Game #{search_term} not found."
  end
end

games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts search(games, "Contra")