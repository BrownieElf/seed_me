require './RandomData.rb'
require './config.rb'
include RandomData

class Seedme

  def seed_me(keys, num)
  	seed = []
    complete_seed = ''
  
  	keys.each do |key, val|
  	  if val == 'S'
  	    seed << "#{key}: '#{random_string}'"
  	  else
  	    seed << "#{key}: #{random_number}"
  	  end
  	end
    	
    complete_seed << join_seed(seed) 

    write_seed(complete_seed)
    
    seed_me(keys, num - 1) if num > 1
    
  end

  def join_seed(seed)
    complete_seed = ''
    complete_seed << class_name
    complete_seed << ".create("
    complete_seed << seed.join(", ") << ")\n"
  end

  def write_seed(string)
    File.open(path, 'a') do |file|
      file << string
    end
  end
end

s = Seedme.new
s.seed_me(keys, 25)
#p s.random_string


