class Seedme

  def path
    @path = "#{Dir.pwd}/temp_rand_seeds.rb"
  end

  def seed_me(keys, num)
    
    class_name = 'Recipe' 
    

    rand_str = "Sed a fermentum metus ac pellentesque risus Curabitur 
    vitae ultrices enim Cras convallis feugiat odio Aliquam erat volutpat 
    Morbi euismod metus eu dapibus pretium Morbi ut lectus porttitor quam 
    fermentum congue Etiam sodales neque at libero sollicitudin eleifend 
    ornare elit vulputate Aenean adipiscing purus ut volutpat blandit Nulla 
    ultricies ipsum vel fringilla vestibulum ipsum est interdum dolor in 
    congue magna mi in orci Suspendisse nec mauris eu erat dictum condimentum 
    at at diam Proin tristique mi id blandit hendrerit felis nisl faucibus 
    lectus ut laoreet augue dolor eu nibh Phasellus tincidunt leo mi sed 
    condimentum sapien pharetra aliquam Duis at"
    

    rand_array = rand_str.split(' ')
    len = rand_array.length
  	seed = []
    
  	  keys.each do |key, val|
 
  	    if val == 'S'
  		  seed << "#{key}: '#{rand_array[rand(len)]}'"
  	    else
  		  seed << "#{key}: #{rand(1000)}"
  	    end
  	  end
    	
      complete_seed = ''

      complete_seed << class_name << ".create(" << seed.join(", ") << ")\n"
      #puts complete_seed

    File.open(path, 'a') do |file|
    file << complete_seed
    end
    
    seed_me(keys, num - 1) if num > 1
    
  end
end

keys = {title: 'S', 
      level: 'I',
      category: 'S',
      resources: 'S',
      ingredients: 'S',
      servings: 'I'}

s = Seedme.new
s.seed_me(keys, 10)


