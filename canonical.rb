def canonical(word)
  arr = word.split("")
  aux = arr.reverse
  resp = true
  i = 0
  while i < arr.length - 1 && resp == true
    if arr[i] != aux[i]
      resp = false
    end
    i += 1
  end
  if resp == true
    puts "La palabra es canonica"
  else
    puts "La palabra no es canonica"
  end
end
#canonical("ana")

def canonical2(word)
  arr = word.split("")
  aux = arr.reverse
  resp = true
  i = 0
  while i < arr.length - 1 && resp == true
    if arr[i] != aux[i]
      resp = false
    end
    i += 1
  end
  resp
end

def areAnagrams?(sent)
  arr = sent.split(" ")
  aux = arr.join
  resp = canonical2(aux)
end

p areAnagrams?("anita lava la tina")
