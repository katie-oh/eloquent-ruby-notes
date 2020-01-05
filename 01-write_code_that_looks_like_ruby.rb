# Class names are CamelCase
class Document
  attr_accessor :title, :author, :content

  # If there are parameters, use ()
  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end


  # If there are NO parameters, don't use parentheses
  def words
  # As opposed to words()
    @content.split
    # As opposed to @content.split()
  end

  # method names are snake_case
  def word_count
    size = words.size

    # Don't use () for if statements
    if size < 100
      puts 'Wow, that\'s a small document'
    else
      puts size
    end
  end
end

document = Document.new('Eloquent Ruby', 'Russ Olsen', "This is Eloquent Ruby.")

#################### Folding code ###################

# If there's only one statement in the code block, fold it unless it's too long
document.words.each { |word| puts word }

# Instead of this
=begin
document.words.each do |word|
  puts word
end
=end

#####################################################

################### instance_of ###################
# instance_of is usually used without parantheses
puts document.instance_of? Document

# Unless it's complex
puts document.instance_of?(self.class.superclass.class)
# Instead of 
# puts document.instance_of? self.class.superclass.class

# If the name of method answers yes/no or true/false
# question, end the name with a ?
# - examples: include? empty?

# If the method does something unexpected or dangerous,
# end the method name with a !
# - examples: flatten! map!

####################################################

############## Exception to case rule ##############
# Float is a method that starts with an uppercase letter
pi = Float('3.14159')
puts pi
####################################################