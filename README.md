# Project: HashMap
A project for the Odin Project Ruby Course

### Limitation

Before we get started, we need to lay down some ground rules. Ruby’s dynamic nature of array allows us to insert and retrieve indexes that are outside our array size range. Example: if we create an array of size 16 to be our buckets size, nothing is stopping us from storing items at index 500. This defeats the purpose we are trying to demonstrate, so we need to put some self restriction to work around this.

Use the following snippet whenever you access a bucket through an index. We want to raise an error if we try to access an out of bound index:

`raise IndexError if index.negative? || index >= @buckets.length`

### Assignment

Start by creating a HashMap class. Proceed to create the following methods:

1. #hash(key) takes a key and produces a hash code with it.

2. #set(key, value) takes two arguments, the first is a key and the second is a value that is assigned to this key. If a key already exists, then the old value is overwritten or we can say that we update the key’s value (e.g. Carlos is our key but it is called twice: once with value I am the old value., and once with value I am the new value.. From the logic stated above, Carlos should contain only the latter value).

- > Hash maps could accommodate various data types for keys like numbers, strings, and even other hashes. But for this project, only handle keys of type strings.

3. #get(key) takes one argument as a key and returns the value that is assigned to this key. If key is not found, return nil.

4. #has?(key) takes a key as an argument and returns true or false based on whether or not the key is in the hash map.

5. #remove(key) takes a key as an argument. If the given key is in the hash map, it should remove the entry with that key and return the deleted entry’s value. If the key isn’t in the hash map, it should return nil.

6. #length returns the number of stored keys in the hash map.

7. #clear removes all entries in the hash map.

8. #keys returns an array containing all the keys inside the hash map.

9. #values returns an array containing all the values.

10. #entries returns an array that contains each key, value pair. Example: [[first_key, first_value], [second_key, second_value]]

### Test Your Hash Map

1. Create a new Ruby file.

2. Create a new instance of your hash map and set the load factor to be 0.75.

3. Populate your hash map using the #set(key, value) method by copying the following:

```
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
```
4. After populating your hash map with the data above, your hash map’s actual capacity should now be at 0.75 (full capacity).

5. Now with a full hash map, try overwriting a few nodes using #set(key, value). By right, this should only over-write the existing values of your nodes and not add new ones.

6. After that, populate your hash map with the last node below (doing this will make your hash map exceed your current load factor, hence expanding your buckets and growing your hash map):

- `test.set('moon', 'silver')`

7. If you have implemented your hash map correctly, the capacity of your new hash map will drop well below your load factor and you will notice that the nodes in your hash map are spread much evenly among your buckets.

8. With your new hash map, try overwriting a few nodes using #set(key, value). Again, this should only over-write existing values of your nodes.

9. Test the other methods of your hash maps such as #get(key), #has?(key), #remove(key), #length, #clear, #keys, #values, and #entries to check if they are still working as expected after expanding your hash map.