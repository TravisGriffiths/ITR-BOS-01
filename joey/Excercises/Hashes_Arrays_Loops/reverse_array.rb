forward = ['a','b','c','d','e']
backward = []

# Loop through the array and create a nother array called backward that is forward in reverse
for z in 0 .. (forward.length-1)
  backward.push(forward.pop)
end
puts
puts forward.join(', ')
puts backward.join(', ')

# reverse an array without a place holder array -- can use place holder variable
puts
puts '================================'

for x in 0 .. (backward.length - 1)
  backward[x] = backward[final_index - x]
end