$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  
  pp directors_database
  director_index = 0 
  while director_index < nds.length do 
 # don't actually need the next line but, makes it clearer   
    puts nds[director_index][:name]
    movie_index = 0
    director_sum = 0 
    while movie_index < nds[director_index][:movies].length
      director_sum += nds[director_index][:movies][movie_index][:worldwide_gross]
 # don't actually need the next line, but makes it clearer
      puts director_sum
      movie_index += 1 
    end
    result[nds[director_index][:name]] = director_sum
    director_index += 1
  end
 result
end
