module RandomData

  def random_array

    @random_array = [ "Sed", "a", "fermentum", "metus", "ac", "pellentesque", 
      "vitae", "ultrices", "enim", "Cras", "convallis", "feugiat", "odio", "Aliquam", 
      "erat", "volutpat", "Morbi", "euismod", "metus", "eu", "dapibus", "pretium", 
      "Morbi", "ut", "lectus", "porttitor", "quam", "fermentum", "congue", "Etiam", 
      "sodales", "neque", "at", "libero", "sollicitudin", "eleifend", "ornare", 
      "elit", "vulputate", "Aenean", "adipiscing", "purus", "ut", "volutpat", 
      "Nulla", "ultricies", "ipsum", "vel", "fringilla", "vestibulum", "ipsum", 
      "est", "interdum", "dolor", "in", "congue", "magna", "mi", "in", "orci", 
      "Suspendisse", "nec", "mauris", "eu", "erat", "dictum", "condimentum", "at", 
      "at", "diam", "Proin", "tristique", "mi", "id", "blandit", "hendrerit", 
      "felis", "nisl", "faucibus", "lectus", "ut", "laoreet", "augue", "dolor", 
      "eu", "nibh", "Phasellus", "tincidunt", "leo", "mi", "sed", "condimentum", 
      "sapien", "pharetra", "aliquam", "Duis", "at", "blandit", "risus", "Curabitur",]
  end

  def random_number
    rand(100)
  end

  def random_string
    random_array[rand(100)]
  end
end
