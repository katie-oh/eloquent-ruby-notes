################### For/Each Loops ##################
# Rubyists tend not to use for loops!!!! ##
# Each is recommended
# When you're using a for loop, you're actually using an each
# for fonts in fonts calls fonts.each
# 
puts "### For/Each Loops ###"
fonts = [ 'courier', 'times roman', 'helvetica' ]

# For
for font in fonts
  puts font
end

# Each
fonts.each do |font|
  puts font
end

#####################################################

################### Case ##################
# Case uses === to do comparisons

puts "### Case ###"

title = 'Eloquent Ruby'
case title
when 'War And Peace'
  puts 'Tolstoy'
when 'Romeo And Juliet'
  puts 'Shakespeare'
else
  puts "Don't know"
end

author = case title
when 'War And Peace'
  'Tolstoy'
when 'Romeo And Juliet'
  'Shakespeare'
else
  "Don't know"
end

puts author

# Notice that this is more compact than the previous!
author = case title
when 'War And Peace' then 'Tolstoy'
when 'Romeo And Julet' then 'Shakespeare'
else "Don't know"
end

puts author

# Regex example
title = 'War And jj'
case title
when /War And .*/
  puts 'Maybe Tolstoy?'
when /Romeo And .*/
  puts 'Maybe Shakespeare?'
else
  puts 'Absolutely no idea...'
end

# "Degenerate" version of case statement lmao
# If you're going to do this, use the if lol
case
when title == 'War And Peace'
  puts 'Tolstoy'
when title == 'Romeo And Juliet'
  puts 'Shakespeare'
else
  puts 'Absolutely no idea...'
end
###########################################

############# Boolean logic ############
# Only false and nil are false
# Everything else is true!

puts '0 is true' if 0
puts 'nil is false' unless nil
puts '"false" is true' if "false"

# try not to do this
flag = 2
# This block won't be executed
if flag == true
  # flag could be a string, or a number, and that
  # could be a good thing

  puts "flag is true"
end
########################################

############ Assignment ############
# Assignment returns the value!!
weird = ( number = 3 )
puts weird

# If it weren't for the break, this would run forever
# number = 3 returns 3
# 3 is true
while number = 3
  puts 'true'
  break
end
#####################################

############# Ternary operator #############
# Rubyists use ternary operators a lot

number = 4
is_greater_than_five = number > 5 ? 'Yes' : 'No'
puts is_greater_than_five

############################################

############## Weird Ruby thing ##############
# Initialize to empty string unless first_name exists
@first_name = 'Katie' unless @first_name

# Same as above and preferred by Rubyists
@first_name ||= 'Katie'
# Same as above. first_name is first_name or ''
# if first_name is nil, then it'll be ''
@first_name = @first_name || 'Katie'

# ||= is similar to +=
# Shouldn't be used to initialize things to booleans

##############################################