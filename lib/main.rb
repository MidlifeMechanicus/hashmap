require_relative "main/hash_map"

new_hash = HashMap.new
new_hash.set("A", "Alpha")
new_hash.set("B", "Bravo")
new_hash.set("C", "Charlie")
new_hash.set("D", "Delta")

p new_hash.keys
p new_hash.values
p new_hash.entries