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
  
 # pp directors_database
  row_index = 0 
  while row_index < nds.length do 
    puts nds[row_index][:name]
 #   column_index = 0
 #   while column_index < nds[row_index].length + 1
 #   puts nds[row_index][:movies][column_index][:worldwide_gross]
    director_sum = 0 
 #   director_sum += nds[row_index][:movies][column_index][:worldwide_gross]
    
  #  column_index += 1 
 # end
  result[nds[row_index][:name]] = director_sum
    row_index += 1
  end
 
 result["Russo Brothers"]
 result
end
