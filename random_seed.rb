class Seedme
  
  complete_seed = ''

  class_name = 'Recipe' 

  path = "#{Dir.pwd}/temp_seeds.rb"

  

  def seed_me(keys)
  	seed = []

  	keys.each do |key|
  	  #p keys.class
  	  p keys
  	  p keys  	
  	end

  end	

end

keys = {:title => 'S', 
  		  level: 'I',
  		  category: 'S',
  		  resources: 'S',
  		  ingredients: 'S',
  		  servings: 'I'}

s = Seedme.new
s.seed_me(keys)
