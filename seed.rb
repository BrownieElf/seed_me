## app for entering seed data into seeds file for your database


complete_seed = ''

class_name = 'Recipe' 

path = "#{Dir.pwd}/temp_seeds.rb" # file to write data to
keys = [:title, :level, :category, :resources, :ingredients, :servings]


def get_info(key)
    puts "#{key}: "
    data = gets.chomp
    data = gets.to_i if data == 'int'
    return data
end

def seed_me(keys)
  values = []

  puts "You may enter data as a string,"
  puts "type 'int' to enter the data as an integer"
  puts "type 'list' to see what you have entered so far,"
  puts "or type 'exit' to exit the program."

  keys.each do |key|

    data = get_info(key)
  
  
    if data == "exit"
  	  values = 'exiting without entering seed'
  	  break
    elsif data == 'list'
  	  puts "Here is what you have so far: "
  	  puts "#{values}"
      data = get_info(key)
    end

  	if data.is_a? String
      values << "#{key}: '#{data}'"
    else
      values << "#{key}: #{data}"
	end
    
  end
  values
end

x = seed_me(keys)

if x.is_a? Array
  complete_seed << class_name << ".create(" << x.join(", ") << ")\n"
  #p complete_seed

  File.open(path, 'a') do |file|
    file << complete_seed
  end
else
  puts x
end