class OrangeGrove
  attr_accessor :trees, :all_the_oranges

  def initialize
    @trees = []
    @all_the_oranges = []
  end

  def count_all_the_oranges
    sum = 0
    @all_the_oranges.each do |oranges|
      sum += oranges
    end
    puts "There are #{sum} oranges in the grove."
  end

end

class OrangeTree < OrangeGrove

  attr_accessor :age, :height, :orange_count, :alive

  def initialize
    @age = 0
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def age
    if @age < 10
      @alive = true
      puts "Your tree is #{@age} years old."
    else
      @alive = false
      puts "Your tree does not have an age because it is dead ;_;"
    end
  end

  def height
    if @alive == true
      @height == true
    else
        puts "Your tree is dead, so it has withered into the ground and is no more and has no height ;_;"
    end
  end

  def count_the_oranges
    if @age < 10
      if @age > 2
        @orange_count = @age * 10
        puts "Your tree has #{@orange_count} oranges!"
      elsif @age <= 2
        puts "Your tree is too young to produce oranges."
      end
    else
      puts "Your tree is dead. There are no oranges to count."
    end
  end

  def pick_an_orange
    if alive == true
      if @orange_count > 0
        @orange_count = @orange_count - 1
        puts "You picked a most refreshing & delicious orange! You now have #{@orange_count} oranges."
      else
        puts "You don't have any oranges."
      end
    else
      puts "I think your tree is dead."
    end
  end

  def one_year_passes
    if @age < 10
      @age = @age + 1
      @height = @height + 1.5
      puts "Your tree is #{@age} years old and #{@height} feet tall"
      count_the_oranges
    else
      puts "Your tree is dead."
    end
  end

end

#testing this out
very_orange_grove = OrangeGrove.new
tree = OrangeTree.new
double_tree = OrangeTree.new
triple_tree = OrangeTree.new

#time passes
puts "tree one:"
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes


puts "tree two:"
double_tree.one_year_passes
double_tree.one_year_passes
double_tree.one_year_passes


puts "tree three:"
triple_tree.one_year_passes
triple_tree.one_year_passes
triple_tree.one_year_passes


very_orange_grove.all_the_oranges << tree.orange_count
very_orange_grove.all_the_oranges << double_tree.orange_count
very_orange_grove.all_the_oranges << triple_tree.orange_count

very_orange_grove.count_all_the_oranges
