require_relative "main/hash_map"

new_hash = HashMap.new
p new_hash

puts new_hash.hash("bob")

new_hash.set("taurean", "taliah")
new_hash.set("taliah", "taurean")

p new_hash.get("taurean")
p new_hash.has?("taurean")

p new_hash.get("matthew")
p new_hash.has?("matthew")