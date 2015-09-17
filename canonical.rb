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

#p areAnagrams?("anita lava la tina")

def canonical3(word1, word2)
  arr1 = word1.split("")
  arr2 = word2.split("")
  resp = true
  i = 0
  while i < arr1.length - 1 && resp == true
    if arr1[i] != arr2[i]
      resp = false
    end
    i += 1
  end
  resp
end

def anagramsFor(pal, arr)
  aux = []
  arr.each do |x| 
    if canonical3(pal,x) == true
      aux.push(x)
    end
  end
  "#{pal} is anagram for #{aux}"
end
pal = "ana"
arr = ["ana", "ana", "fer", "ana"]
puts anagramsFor(pal, arr)
