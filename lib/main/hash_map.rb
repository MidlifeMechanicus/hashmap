class HashMap
  def initialize
    @size = 16
    @buckets = Array.new(@size)
    @count = 0
    @load = 0.75
  end

  attr_accessor :size, :buckets, :count, :load

  def hash(key)
    hash_code = 0
    prime_number = 31
    key.each_char do |char|
      hash_code = (prime_number * hash_code) + char.ord
    end
    hash_code % size
  end

  def set(key, value)
    # takes two arguments, the first is a key and the second is a value that is assigned to this key.
    # If a key already exists, then the old value is overwritten or we can say that we update the key’s value.

    remove(key) if has?(key)
    bucket = hash(key)
    buckets[bucket] = [] if buckets[bucket].nil?
    buckets[bucket] << [key, value]
    @count += 1
    resize if @count.to_f / @size > @load
  end

  def resize
    # need a way to resize the array
    old_buckets = entries
    @size *= 2
    @buckets = Array.new(@size)
    @count = 0
    old_buckets.each do |bucket|
      set(bucket[0], bucket[1])
    end
  end

  def get(key)
    # takes one argument as a key and returns the value that is assigned to this key. If key is not found, return nil.
    value = nil
    bucket = hash(key)
    buckets[bucket]&.each do |element|
      if element[0] == key
        value = element[1]
        break
      end
    end
    value
  end

  def has?(key)
    # takes a key as an argument and returns true or false based on whether or not the key is in the hash map.
    key_valid = false
    bucket = hash(key)
    buckets[bucket]&.each do |element|
      if element[0] == key
        key_valid = true
        break
      end
    end
    key_valid
  end

  def remove(key)
    # takes a key as an argument. If the given key is in the hash map, it should remove the entry with that key and return the deleted entry’s value.
    # If the key isn’t in the hash map, it should return nil.
    value = nil
    bucket = hash(key)
    unless buckets[bucket].nil?
      buckets[bucket].each_with_index do |element, index|
        next unless element[0] == key

        value = element[1]
        buckets[bucket].delete_at(index)
        @count -= 1
        break
      end
    end
    value
  end

  def length
    @count
  end

  def clear
    # removes all entries in the hash map.
    @size = 16
    @buckets = Array.new(@size)
    @count = 0
  end

  def keys
    # returns an array containing all the keys inside the hash map.
    key_list = []
    buckets.each do |bucket|
      next if bucket.nil?

      bucket.each do |element|
        key_list << element[0] unless element.nil?
      end
    end
    key_list
  end

  def values
    # returns an array containing al the values.
    value_list = []
    buckets.each do |bucket|
      next if bucket.nil?

      bucket.each do |element|
        value_list << element[1] unless element.nil?
      end
    end
    value_list
  end

  def entries
    # returns an array that contains each key, value pair. Example: [[first_key, first_value], [second_key, second_value]].
    entry_list = []
    buckets.each do |bucket|
      next if bucket.nil?

      bucket.each do |element|
        entry_list << element unless element.nil?
      end
    end
    entry_list
  end
end

# Consider separate loop function
