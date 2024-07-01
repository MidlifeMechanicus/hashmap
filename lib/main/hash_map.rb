class HashMap

  def hash(key)
    hash_code = 0
    prime_number = 31
    key.each_char do |char|
      hash_code = prime_number * hash_code + char.ord
    end
    hash_code
  end
 
end