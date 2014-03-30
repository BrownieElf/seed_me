


def keys
  @keys = { title: 'S', 
            level: 'I',
            category: 'S',
            resources: 'S',
            ingredients: 'S',
            servings: 'I' }
end

def class_name
  @class_name = 'Recipe'
end

def path
    @path = "#{Dir.pwd}/temp_rand_seeds.rb"
end