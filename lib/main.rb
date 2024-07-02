require_relative "main/hash_map"

# Create a new instance of your hash map and set the load factor to be 0.75.

test = HashMap.new

# Populate your hash map using the #set(key, value) method by copying the following:

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')

# Now with a full hash map, try overwriting a few nodes using #set(key, value). By right, this should only over-write the existing values of your nodes and not add new ones.

p test.length

test.set("kite", "light red")
test.set("banana", "bright yellow")

p test.length

# After that, populate your hash map with the last node below (doing this will make your hash map exceed your current load factor, hence expanding your buckets and growing your hash map):

test.set('moon', 'silver')

# If you have implemented your hash map correctly, the capacity of your new hash map will drop well below your load factor and you will notice that the nodes in your hash map are spread much evenly among your buckets.

p test

# With your new hash map, try overwriting a few nodes using #set(key, value). Again, this should only over-write existing values of your nodes.

p test.length

test.set("kite", "pink")
test.set("banana", "yellow")

p test.length

# Test the other methods of your hash maps such as #get(key), #has?(key), #remove(key), #length, #clear, #keys, #values, and #entries to check if they are still working as expected after expanding your hash map.

p test.get("moon")
p test.has?("moon")

test.remove("kite")

p test.keys
p test.values
p test.entries

test.clear
p test
